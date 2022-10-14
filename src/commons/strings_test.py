"""Test string utilities."""

from commons.strings import string_concat


def test_string_concat() -> None:
    """Tests string_concat."""
    result = string_concat("hello", "world")
    assert result == "helloworld"
