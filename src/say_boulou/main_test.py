"""Tests main.py."""

from say_boulou.main import message


def test_message() -> None:
    """Tests hello message."""
    assert message() == "Hi boulou"
