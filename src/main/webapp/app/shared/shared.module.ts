import { NgModule, CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import { NgbDateAdapter } from '@ng-bootstrap/ng-bootstrap';

import { NgbDateMomentAdapter } from './util/datepicker-adapter';
import { JhipsterGatewayKeycloakSharedLibsModule, JhipsterGatewayKeycloakSharedCommonModule, HasAnyAuthorityDirective } from './';

@NgModule({
    imports: [JhipsterGatewayKeycloakSharedLibsModule, JhipsterGatewayKeycloakSharedCommonModule],
    declarations: [HasAnyAuthorityDirective],
    providers: [{ provide: NgbDateAdapter, useClass: NgbDateMomentAdapter }],
    exports: [JhipsterGatewayKeycloakSharedCommonModule, HasAnyAuthorityDirective],
    schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class JhipsterGatewayKeycloakSharedModule {
    static forRoot() {
        return {
            ngModule: JhipsterGatewayKeycloakSharedModule
        };
    }
}
