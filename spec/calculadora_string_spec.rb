require 'spec_helper'

describe CalculadoraString do
  it 'deve somar 2,2' do
    expect(subject.somar('2,2')).to eq(4)
  end
  it 'deve somar 2,1' do
    expect(subject.somar('2,1')).to eq(3)
  end
  it 'deve somar 1\n2,3' do
    expect(subject.somar("1\n2,3")).to eq(6)
  end
  it 'deve somar ""' do
    expect(subject.somar('')).to eq(0)
  end
  it 'deve lançar uma exceção ao somar 1,\n\n\n\n' do
    expect { subject.somar("1,\n ") }.to throw_symbol(:entrada_invalida)
  end
  it 'deve lançar uma exceção ao somar 2,\n' do
    expect { subject.somar('2,\n') }.to throw_symbol(:entrada_invalida)
  end
  it 'deve lançar uma exceção ao somar 2e2' do
    expect { subject.somar('2e2') }.to throw_symbol(:entrada_invalida)
  end
  it 'deve somar 1\n2,3' do
    expect(subject.somar("1\n2,3")).to eq(6)
  end
end
