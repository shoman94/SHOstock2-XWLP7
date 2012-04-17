.class public final Lcom/seven/Z7/provider/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/seven/Z7/provider/Calendar$ExtendedProperties;,
        Lcom/seven/Z7/provider/Calendar$ExtendedPropertiesColumns;,
        Lcom/seven/Z7/provider/Calendar$CalendarAlerts;,
        Lcom/seven/Z7/provider/Calendar$CalendarAlertsColumns;,
        Lcom/seven/Z7/provider/Calendar$Reminders;,
        Lcom/seven/Z7/provider/Calendar$RemindersColumns;,
        Lcom/seven/Z7/provider/Calendar$BusyBits;,
        Lcom/seven/Z7/provider/Calendar$BusyBitsColumns;,
        Lcom/seven/Z7/provider/Calendar$CalendarMetaData;,
        Lcom/seven/Z7/provider/Calendar$CalendarMetaDataColumns;,
        Lcom/seven/Z7/provider/Calendar$Instances;,
        Lcom/seven/Z7/provider/Calendar$Events;,
        Lcom/seven/Z7/provider/Calendar$EventsColumns;,
        Lcom/seven/Z7/provider/Calendar$Attendees;,
        Lcom/seven/Z7/provider/Calendar$AttendeesColumns;,
        Lcom/seven/Z7/provider/Calendar$Calendars;,
        Lcom/seven/Z7/provider/Calendar$CalendarsColumns;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "content://calendar"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/seven/Z7/provider/Calendar;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1121
    return-void
.end method
