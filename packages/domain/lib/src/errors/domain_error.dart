/// Domain error class
abstract class DomainError {}

/// Not found error class, usually used when the resource is not found
class NotFoundError extends DomainError {}

/// Unauthorized error class
class UnauthorizedError extends DomainError {}

/// Network error class
class NetworkError extends DomainError {}

/// Unexpected error class
class UnexpectedError extends DomainError {}
