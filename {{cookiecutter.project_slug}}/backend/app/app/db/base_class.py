from typing import Any, Optional

from sqlalchemy.ext.declarative import as_declarative, declared_attr


@as_declarative()
class Base:
    id: Any
    __name__: str
    __tablename_prefix__: Optional[str] = None
    # Generate __tablename__ automatically
    @declared_attr
    def __tablename__(cls) -> str:
        prefix: str = cls.__tablename_prefix__ or str()
        return prefix + cls.__name__.lower()
