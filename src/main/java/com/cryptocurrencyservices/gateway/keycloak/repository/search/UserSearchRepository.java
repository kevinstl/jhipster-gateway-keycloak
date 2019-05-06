package com.cryptocurrencyservices.gateway.keycloak.repository.search;

import com.cryptocurrencyservices.gateway.keycloak.domain.User;
import org.springframework.data.elasticsearch.repository.ElasticsearchRepository;

/**
 * Spring Data Elasticsearch repository for the User entity.
 */
public interface UserSearchRepository extends ElasticsearchRepository<User, String> {
}
