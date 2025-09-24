require "benchmark/ips"

[1].each_with_index_patched(10) { |el, i| raise unless i == 10 }

array = (1..100_000).to_a
Benchmark.ips do |x|
  x.report("each_with_index") do
    array.each_with_index { |el, i| el + i }
  end

  x.report("each_with_index_patched") do
    array.each_with_index_patched(1) { |el, i| el + i }
  end

  x.report("each.with_index") do
    array.to_enum.with_index { |el, i| el + i }
  end

  x.compare!
end
