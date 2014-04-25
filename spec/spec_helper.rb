def when_implemented(&block)
  begin
    yield
  rescue NotImplementedError
    pending
  end
end
