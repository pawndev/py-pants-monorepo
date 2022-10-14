"""Test math utilities."""

from commons.maths import math_sum


def test_math_sum() -> None:
    """Tests math_sum."""
    result = math_sum(1, 10)
    assert result == 11
