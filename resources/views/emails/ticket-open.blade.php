<div>
    <h1>A New Ticket is Opened</h1>
    @foreach($ticket as $value)
        <h3>{{$value}}</h3>
    @endforeach
    <a href="{{ route('ticket.index') }}">View Ticket</a>
</div>