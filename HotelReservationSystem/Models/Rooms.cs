using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HotelReservationSystem.Room
{
  public class Rooms
  {
    public int RoomID { get; set; }
    public string RoomType { get; set; }
    public string RoomDesc { get; set; }
    public int AvailableQty { get; set; }
    public int TotalQty { get; set; }
    public int MaxAdults { get; set; }
    public int MaxChildren { get; set; }
    public double Price { get; set; }
    public string Image { get; set; }
  }
}
