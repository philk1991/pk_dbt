with branches as (
    select
        protected,
        "name" as branch_name,
        "commit",
        protection,
        repository,
        protection_url,
        "_airbyte_ab_id",
        "_airbyte_emitted_at",
        "_airbyte_normalized_at",
        "_airbyte_branches_hashid"
    from
        {{ source('github','branches') }}
)

Select * from branches
