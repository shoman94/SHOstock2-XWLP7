.class public Lcom/android/emailcommon/utility/Tags;
.super Ljava/lang/Object;
.source "Tags.java"


# static fields
.field public static pages:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1237
    const/16 v0, 0x18

    new-array v0, v0, [[Ljava/lang/String;

    const/16 v1, 0x25

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Sync"

    aput-object v2, v1, v5

    const-string v2, "Responses"

    aput-object v2, v1, v6

    const-string v2, "Add"

    aput-object v2, v1, v7

    const-string v2, "Change"

    aput-object v2, v1, v8

    const-string v2, "Delete"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "Fetch"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "SyncKey"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "ClientId"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "ServerId"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "Status"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "Collection"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "Class"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "Version"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CollectionId"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "GetChanges"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "MoreAvailable"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "WindowSize"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "Commands"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Options"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "FilterType"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "Truncation"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "RTFTruncation"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Conflict"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Collections"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "ApplicationData"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "DeletesAsMoves"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "NotifyGUID"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "Supported"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "SoftDelete"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MIMESupport"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "MIMETruncation"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "Wait"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "Limit"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "Partial"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "ConversationMode"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "MaxItems"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "HeartbeatInterval"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Anniversary"

    aput-object v2, v1, v5

    const-string v2, "AssistantName"

    aput-object v2, v1, v6

    const-string v2, "AssistantTelephoneNumber"

    aput-object v2, v1, v7

    const-string v2, "Birthday"

    aput-object v2, v1, v8

    const-string v2, "ContactsBody"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "ContactsBodySize"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "ContactsBodyTruncated"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Business2TelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "BusinessAddressCity"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "BusinessAddressCountry"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "BusinessAddressPostalCode"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "BusinessAddressState"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "BusinessAddressStreet"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "BusinessFaxNumber"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "BusinessTelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CarTelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "ContactsCategories"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "ContactsCategory"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "Children"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "Child"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CompanyName"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "Department"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Email1Address"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Email2Address"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "Email3Address"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "FileAs"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "FirstName"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "Home2TelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "HomeAddressCity"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "HomeAddressCountry"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "HomeAddressPostalCode"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "HomeAddressState"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "HomeAddressStreet"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "HomeFaxNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "HomeTelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "JobTitle"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "LastName"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "MiddleName"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "MobileTelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "OfficeLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "OtherAddressCity"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "OtherAddressCountry"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "OtherAddressPostalCode"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "OtherAddressState"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "OtherAddressStreet"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "PagerNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "RadioTelephoneNumber"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "Spouse"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "Suffix"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "Title"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "Webpage"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "YomiCompanyName"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "YomiFirstName"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "YomiLastName"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "CompressedRTF"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "Picture"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "Alias"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "WeightedRank"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Attachment"

    aput-object v2, v1, v5

    const-string v2, "Attachments"

    aput-object v2, v1, v6

    const-string v2, "AttName"

    aput-object v2, v1, v7

    const-string v2, "AttSize"

    aput-object v2, v1, v8

    const-string v2, "Add0Id"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "AttMethod"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "AttRemoved"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "Body"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "BodySize"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "BodyTruncated"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "DateReceived"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "DisplayName"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "DisplayTo"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "Importance"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "MessageClass"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "Subject"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "Read"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "To"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "CC"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "From"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ReplyTo"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "AllDayEvent"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "Categories"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "Category"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "DTStamp"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "EndTime"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "InstanceType"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "IntDBusyStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "Location"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "MeetingRequest"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "Organizer"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "RecurrenceId"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "Reminder"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "ResponseRequested"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "Recurrences"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "Recurence"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "Recurrence_Type"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "Recurrence_Until"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "Recurrence_Occurrences"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "Recurrence_Interval"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "Recurrence_DayOfWeek"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "Recurrence_DayOfMonth"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "Recurrence_WeekOfMonth"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "Recurrence_MonthOfYear"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "StartTime"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "Sensitivity"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "TimeZone"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "GlobalObjId"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "ThreadTopic"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "MIMEData"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "MIMETruncated"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "MIMESize"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "InternetCPID"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "Flag"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "FlagStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "EmailContentClass"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "FlagType"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "CompleteTime"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "Notify"

    aput-object v2, v1, v5

    const-string v2, "Notification"

    aput-object v2, v1, v6

    const-string v2, "version"

    aput-object v2, v1, v7

    const-string v2, "lifeTime"

    aput-object v2, v1, v8

    const-string v2, "deviceInfo"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "enable"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "folder"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "serverId"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "deviceAddress"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "validCarrierProfiles"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "carrierProfile"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "responses"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "devices"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "device"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "id"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "expiry"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "notifyGUID"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "devideFriendlyName"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x34

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "CalTimeZone"

    aput-object v2, v1, v5

    const-string v2, "CalAllDayEvent"

    aput-object v2, v1, v6

    const-string v2, "CalAttendees"

    aput-object v2, v1, v7

    const-string v2, "CalAttendee"

    aput-object v2, v1, v8

    const-string v2, "CalAttendee_Email"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "CalAttendee_Name"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "CalBody"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "CalBodyTruncated"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "CalBusyStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "CalCategories"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "CalCategory"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "CalCompressed_RTF"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "CalDTStamp"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CalEndTime"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "CalExeption"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "CalExceptions"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "CalException_IsDeleted"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "CalException_StartTime"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "CalLocation"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "CalMeetingStatus"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "CalOrganizer_Email"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "CalOrganizer_Name"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "CalRecurrence"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "CalRecurrence_Type"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "CalRecurrence_Until"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "CalRecurrence_Occurrences"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CalRecurrence_Interval"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "CalRecurrence_DayOfWeek"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "CalRecurrence_DayOfMonth"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "CalRecurrence_WeekOfMonth"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "CalRecurrence_MonthOfYear"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "CalReminder_MinsBefore"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "CalSensitivity"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "CalSubject"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "CalStartTime"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "CalUID"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "CalAttendee_Status"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "CalAttendee_Type"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "CalAttachment"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "CalAttachments"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "CalAttName"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "CalAttSize"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "CalAttOid"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "CalAttMethod"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "CalAttRemoved"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "CalDisplayName"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "CalDisallowNewTimeProposal"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "CalResponseRequested"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "CalAppointmentReplyTime"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "CalResponseType"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "CalCalendarType"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "CalIsLeapMonth"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "MoveItems"

    aput-object v3, v2, v5

    const-string v3, "Move"

    aput-object v3, v2, v6

    const-string v3, "SrcMsgId"

    aput-object v3, v2, v7

    const-string v3, "SrcFldId"

    aput-object v3, v2, v8

    const-string v3, "DstFldId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "MoveResponse"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "MoveStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DstMsgId"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "GetItemEstimate"

    aput-object v3, v2, v5

    const-string v3, "Version"

    aput-object v3, v2, v6

    const-string v3, "Collection"

    aput-object v3, v2, v7

    const-string v3, "Collection"

    aput-object v3, v2, v8

    const-string v3, "Class"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "CollectionId"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DateTime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Estimate"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Response"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Status"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Folders"

    aput-object v3, v2, v5

    const-string v3, "Folder"

    aput-object v3, v2, v6

    const-string v3, "FolderDisplayName"

    aput-object v3, v2, v7

    const-string v3, "FolderServerId"

    aput-object v3, v2, v8

    const-string v3, "FolderParentId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "FolderResponse"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "FolderStatus"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "FolderContentClass"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Changes"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "FolderAdd"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "FolderDelete"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "FolderUpdate"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "FolderSyncKey"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "FolderFolderCreate"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "FolderFolderDelete"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "FolderFolderUpdate"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "FolderSync"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "Count"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "FolderVersion"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CalId"

    aput-object v3, v2, v5

    const-string v3, "CollectionId"

    aput-object v3, v2, v6

    const-string v3, "MeetingResponse"

    aput-object v3, v2, v7

    const-string v3, "ReqId"

    aput-object v3, v2, v8

    const-string v3, "Request"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Result"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "UserResponse"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Version"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x1f

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Body"

    aput-object v3, v2, v5

    const-string v3, "BodySize"

    aput-object v3, v2, v6

    const-string v3, "BodyTruncated"

    aput-object v3, v2, v7

    const-string v3, "Categories"

    aput-object v3, v2, v8

    const-string v3, "Category"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Complete"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "DateCompleted"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "DueDate"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "UTCDueDate"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Importance"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Recurrence"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "RecurrenceType"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "RecurrenceStart"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "RecurrenceUntil"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "RecurrenceOccurrences"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "RecurrenceInterval"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "RecurrenceDOM"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "RecurrenceDOW"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "RecurrenceWOM"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "RecurrenceMOY"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "RecurrenceRegenerate"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "RecurrenceDeadOccur"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "ReminderSet"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "ReminderTime"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "Sensitivity"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "StartDate"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "UTCStartDate"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "Subject"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "CompressedRTF"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "OrdinalDate"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "SubordinalDate"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "resolveRecipients"

    aput-object v3, v2, v5

    const-string v3, "response"

    aput-object v3, v2, v6

    const-string v3, "status"

    aput-object v3, v2, v7

    const-string v3, "type"

    aput-object v3, v2, v8

    const-string v3, "recipient"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "displayName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "emailAddress"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "certificates"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "certificate"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "miniCertificate"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "options"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "to"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "certificateRetrieval"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "recipientCount"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "maxCertificates"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "maxAmbigiousRecipients"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "certificateCount"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Availability"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "StartTime"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "EndTime"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "MergedFreeBusy"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "validateCert"

    aput-object v3, v2, v5

    const-string v3, "certificates"

    aput-object v3, v2, v6

    const-string v3, "certificate"

    aput-object v3, v2, v7

    const-string v3, "certificateChain"

    aput-object v3, v2, v8

    const-string v3, "checkCRL"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "status"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "CustomerId"

    aput-object v3, v2, v5

    const-string v3, "GovernmentId"

    aput-object v3, v2, v6

    const-string v3, "IMAddress"

    aput-object v3, v2, v7

    const-string v3, "IMAddress2"

    aput-object v3, v2, v8

    const-string v3, "IMAddress3"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ManagerName"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "CompanyMainPhone"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "AccountName"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "NickName"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "MMS"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Ping"

    aput-object v3, v2, v5

    const-string v3, "AutdState"

    aput-object v3, v2, v6

    const-string v3, "PingStatus"

    aput-object v3, v2, v7

    const-string v3, "HeartbeatInterval"

    aput-object v3, v2, v8

    const-string v3, "PingFolders"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "PingFolder"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "PingId"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "PingClass"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "MaxFolders"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x36

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Provision"

    aput-object v3, v2, v5

    const-string v3, "Policies"

    aput-object v3, v2, v6

    const-string v3, "Policy"

    aput-object v3, v2, v7

    const-string v3, "PolicyType"

    aput-object v3, v2, v8

    const-string v3, "PolicyKey"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Data"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "ProvisionStatus"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "RemoteWipe"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "EASProvidionDoc"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "DevicePasswordEnabled"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "AlphanumericDevicePasswordRequired"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "DeviceEncryptionEnabled"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "PasswordRecoveryEnabled"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "-unused-"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "AttachmentsEnabled"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "MinDevicePasswordLength"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "MaxInactivityTimeDeviceLock"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "MaxDevicePasswordFailedAttempts"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "MaxAttachmentSize"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "AllowSimpleDevicePassword"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "DevicePasswordExpiration"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "DevicePasswordHistory"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "AllowStorageCard"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "AllowCamera"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "RequireDeviceEncryption"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "AllowUnsignedApplications"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "AllowUnsignedInstallationPackages"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "MinDevicePasswordComplexCharacters"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "AllowWiFi"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "AllowTextMessaging"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string v4, "AllowPOPIMAPEmail"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string v4, "AllowBluetooth"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string v4, "AllowIrDA"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string v4, "RequireManualSyncWhenRoaming"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string v4, "AllowDesktopSync"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string v4, "MaxCalendarAgeFilder"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string v4, "AllowHTMLEmail"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string v4, "MaxEmailAgeFilter"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string v4, "MaxEmailBodyTruncationSize"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string v4, "MaxEmailHTMLBodyTruncationSize"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string v4, "RequireSignedSMIMEMessages"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string v4, "RequireEncryptedSMIMEMessages"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string v4, "RequireSignedSMIMEAlgorithm"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string v4, "RequireEncryptionSMIMEAlgorithm"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string v4, "AllowSMIMEEncryptionAlgorithmNegotiation"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string v4, "AllowSMIMESoftCerts"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string v4, "AllowBrowser"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string v4, "AllowConsumerEmail"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string v4, "AllowRemoteDesktop"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string v4, "AllowInternetSharing"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string v4, "UnapprovedInROMApplicationList"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string v4, "ApplicationName"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string v4, "ApprovedApplicationList"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string v4, "Hash"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0x1c

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Search"

    aput-object v3, v2, v5

    const-string v3, "Stores"

    aput-object v3, v2, v6

    const-string v3, "Store"

    aput-object v3, v2, v7

    const-string v3, "Name"

    aput-object v3, v2, v8

    const-string v3, "Query"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Options"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Range"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Response"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Result"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Properties"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Total"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "EqualTo"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Value"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "And"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "Or"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "FreeText"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "SubstringOp"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "DeepTraversal"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "LongId"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "RebuildResults"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "LessThan"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "GreateerThan"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "Schema"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "Supported"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "UserName"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "Password"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "ConversationId"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "GalDisplayName"

    aput-object v3, v2, v5

    const-string v3, "GalPhone"

    aput-object v3, v2, v6

    const-string v3, "GalOffice"

    aput-object v3, v2, v7

    const-string v3, "GalTitle"

    aput-object v3, v2, v8

    const-string v3, "GalCompany"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "GalAlias"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "GalFirstName"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "GalLastName"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "GalHomePhone"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "GalMobilePhone"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "GalEmailAddress"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/16 v2, 0x14

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "BodyPreference"

    aput-object v3, v2, v5

    const-string v3, "BodyPreferenceType"

    aput-object v3, v2, v6

    const-string v3, "BodyPreferenceTruncationSize"

    aput-object v3, v2, v7

    const-string v3, "AllOrNone"

    aput-object v3, v2, v8

    const-string v3, "--unused--"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "BaseBody"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "BaseData"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "BaseEstimatedDataSize"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "BaseTruncated"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "BaseAttachments"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "BaseAttachment"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "BaseDisplayName"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "FileReference"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "BaseMethod"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "BaseContentId"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "BaseContentLocation"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "BaseIsInline"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "BaseNativeBodyType"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "BaseContentType"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "BasePreview"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x1e

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Settings"

    aput-object v3, v2, v5

    const-string v3, "Status"

    aput-object v3, v2, v6

    const-string v3, "Get"

    aput-object v3, v2, v7

    const-string v3, "Set"

    aput-object v3, v2, v8

    const-string v3, "oof"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "oofState"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "startTime"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "endTime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "oofMessage"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "appliedToInternal"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "appliesToExtKnown"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "appliesToExtUnknown"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "enabled"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "replyMessage"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "bodyType"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "devicePassword"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "password"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "deviceInformation"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "model"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "IMEI"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "friendlyName"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string v4, "OS"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string v4, "OSLanguage"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string v4, "phoneNumber"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string v4, "userInformation"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string v4, "emailAddress"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string v4, "SMTPAddress"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string v4, "UserAgent"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string v4, "outBoundSms"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string v4, "networkOperator"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "linkId"

    aput-object v3, v2, v5

    const-string v3, "displayName"

    aput-object v3, v2, v6

    const-string v3, "isFolder"

    aput-object v3, v2, v7

    const-string v3, "creationDate"

    aput-object v3, v2, v8

    const-string v3, "lastModifiedDate"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ishidden"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "contentLength"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "contentType"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/16 v2, 0x15

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "ItemOperations"

    aput-object v3, v2, v5

    const-string v3, "Fetch"

    aput-object v3, v2, v6

    const-string v3, "Store"

    aput-object v3, v2, v7

    const-string v3, "Options"

    aput-object v3, v2, v8

    const-string v3, "Range"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Total"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Properties"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "Data"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "Status"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Response"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "Version"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "Schema"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "Part"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "EmptyFolderContents"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "DeleteSubFolders"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "UserName"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string v4, "Password"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string v4, "Move"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string v4, "DstFldId"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string v4, "ConversationId"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string v4, "MoveAlways"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/16 v2, 0xe

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "SendMail"

    aput-object v3, v2, v5

    const-string v3, "SmartForward"

    aput-object v3, v2, v6

    const-string v3, "SmartReply"

    aput-object v3, v2, v7

    const-string v3, "SaveInSentItems"

    aput-object v3, v2, v8

    const-string v3, "ReplaceMime"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "Type"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "Source"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "FolderId"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ItemId"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "LongId"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "InstanceId"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "MIME"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "ClientId"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "Status"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "UmCallerID"

    aput-object v3, v2, v5

    const-string v3, "UmUserNotes"

    aput-object v3, v2, v6

    const-string v3, "UmAttDuration"

    aput-object v3, v2, v7

    const-string v3, "UmAttOrder"

    aput-object v3, v2, v8

    const-string v3, "ConversationId"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "ConversationIndex"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "LastVerbExecuted"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "LastVerbExecutionTime"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "ReveivedAsBcc"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "Sender"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "CalendarType"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "IsLeapMonth"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "Subject"

    aput-object v3, v2, v5

    const-string v3, "MessageClass"

    aput-object v3, v2, v6

    const-string v3, "LastModifiedDate"

    aput-object v3, v2, v7

    const-string v3, "Categories"

    aput-object v3, v2, v8

    const-string v3, "Category"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/emailcommon/utility/Tags;->pages:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
