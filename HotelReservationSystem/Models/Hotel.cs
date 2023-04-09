namespace Assignment
{
    public class Hotel
    {
        public int RoomId { get; set; }
        public string RoomName { get; set; }
        public string RoomLocation { get; set; }
        public int NoRooms { get; set; }
        public int MaxAdults { get; set; }
        public int MaxChildren { get; set; }
        public double PricePerAdult { get; set; }
        public double PricePerChildren { get; set; }
        public string Image { set; get; }
    }
}
