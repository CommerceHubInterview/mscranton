###Problem Statement

CommerceHub has a partner that owns a hotel. Hotels are definitely not our business, but this is a good partner, so we want to do our best to help them out. The hotel currently has no online presence whatsoever, and they currently only take reservations over the phone. The hotel owner wants to expand their capabilities and is asking for us to design a system that allows customers to make hotel reservations online.

An engineer attempted to model how to capture the data they need, but you have been asked to review and re-design how to store and structure the reservation data.

The product manager has told you the following details to consider:

    The hotel only has one location with no plans for expansion.
    All rooms are identical except for the bed type. The hotel describes its rooms as "King-sized" and "Queen-sized." There are 200 rooms total - 100 of each type.
    The hotel only collects name, phone number, and email.
    A customer can only book one hotel room at a time.
    Payment is not collected until the time of checkout. You do not need to build tables to capture this data.
    Pricing is as follows: King-size rooms are priced at X, Queen-size rooms are priced at Y. Prices are consistent all year. There will be no sales, discounts, or frequent stay programs.

There are at least five mistakes in the initial design. The engineer also did not carefully follow these guiding principles for naming conventions and best practices:

    Column names and table names: Camelcase instead of underscores (startDate vs. start_date).
    Indexes: PK for clustered index that is also primary key and IX for non-clustered indexes + table name + column names in the order they appear + inc if there is one or more include column. For example PK_Order_orderId and IX_Order_customerId_inc.
    Data types: Identity columns should be either INT or BIGINT, strings should be VARCHAR unless there is a concern for special characters, and date fields should capture what they need - do not default everything to DATETIME.
