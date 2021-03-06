.class public Lcom/android/email/MediaFile;
.super Ljava/lang/Object;
.source "MediaFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/MediaFile$MediaFileType;
    }
.end annotation


# static fields
.field public static sFileExtensions:Ljava/lang/String;

.field private static sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/email/MediaFile$MediaFileType;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeType:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sMimeTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/16 v11, 0x17

    const/16 v10, 0x54

    const/16 v9, 0x33

    const/16 v8, 0xb

    const/4 v4, 0x0

    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    .line 199
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/email/MediaFile;->sMimeType:Ljava/util/HashMap;

    .line 215
    const-string v0, "MP3"

    const/4 v1, 0x1

    const-string v2, "audio/mpeg"

    const-string v3, "Mpeg"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 216
    const-string v0, "M4A"

    const/4 v1, 0x2

    const-string v2, "audio/mp4"

    const-string v3, "M4A"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 217
    const-string v0, "WAV"

    const/4 v1, 0x3

    const-string v2, "audio/x-wav"

    const-string v3, "WAVE"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 218
    const-string v0, "AMR"

    const/4 v1, 0x4

    const-string v2, "audio/amr"

    const-string v3, "AMR"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 219
    const-string v0, "AWB"

    const/4 v1, 0x5

    const-string v2, "audio/amr-wb"

    const-string v3, "AWB"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 220
    const-string v0, "WMA"

    const/4 v1, 0x6

    const-string v2, "audio/x-ms-wma"

    const-string v3, "WMA"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 221
    const-string v0, "OGG"

    const/4 v1, 0x7

    const-string v2, "audio/ogg"

    const-string v3, "OGG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 222
    const-string v0, "AAC"

    const/16 v1, 0x8

    const-string v2, "audio/aac"

    const-string v3, "AAC"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 224
    const-string v0, "MID"

    const-string v2, "audio/midi"

    const-string v3, "MIDI"

    move v1, v8

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 225
    const-string v0, "XMF"

    const-string v2, "audio/midi"

    const-string v3, "XMF"

    move v1, v8

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 226
    const-string v0, "MXMF"

    const-string v2, "audio/midi"

    const-string v3, "MXMF"

    move v1, v8

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 227
    const-string v0, "RTTTL"

    const-string v2, "audio/midi"

    const-string v3, "RTTTL"

    move v1, v8

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 228
    const-string v0, "SMF"

    const/16 v1, 0xc

    const-string v2, "audio/sp-midi"

    const-string v3, "SMF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 229
    const-string v0, "IMY"

    const/16 v1, 0xd

    const-string v2, "audio/imelody"

    const-string v3, "IMY"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 230
    const-string v0, "MIDI"

    const-string v2, "audio/midi"

    const-string v3, "MIDI"

    move v1, v8

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 231
    const-string v0, "3GA"

    const/16 v1, 0x9

    const-string v2, "audio/3gpp"

    const-string v3, "3GA"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 233
    const-string v0, "MPEG"

    const/16 v1, 0x1a

    const-string v2, "video/mpeg"

    const-string v3, "MPEG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 234
    const-string v0, "MPG"

    const/16 v1, 0x1a

    const-string v2, "video/mpeg"

    const-string v3, "MPEG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 235
    const-string v0, "MP4"

    const/16 v1, 0x15

    const-string v2, "video/mp4"

    const-string v3, "MP4"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 236
    const-string v0, "M4V"

    const/16 v1, 0x16

    const-string v2, "video/mp4"

    const-string v3, "M4V"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 237
    const-string v0, "3GP"

    const-string v2, "video/3gpp"

    const-string v3, "3GP"

    move v1, v11

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 238
    const-string v0, "3GPP"

    const-string v2, "video/3gpp"

    const-string v3, "3GPP"

    move v1, v11

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 239
    const-string v0, "3G2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    const-string v3, "3G2"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 240
    const-string v0, "3GPP2"

    const/16 v1, 0x18

    const-string v2, "video/3gpp2"

    const-string v3, "3GPP2"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 241
    const-string v0, "WMV"

    const/16 v1, 0x19

    const-string v2, "video/x-ms-wmv"

    const-string v3, "WMV"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 242
    const-string v0, "ASF"

    const/16 v1, 0x1b

    const-string v2, "video/x-ms-asf"

    const-string v3, "ASF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 243
    const-string v0, "AVI"

    const/16 v1, 0x1c

    const-string v2, "video/avi"

    const-string v3, "AVI"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 244
    const-string v0, "DIVX"

    const/16 v1, 0x1d

    const-string v2, "video/divx"

    const-string v3, "DIVX"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 245
    const-string v0, "FLV"

    const/16 v1, 0x1e

    const-string v2, "video/flv"

    const-string v3, "FLV"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 246
    const-string v0, "MKV"

    const/16 v1, 0x1f

    const-string v2, "video/mkv"

    const-string v3, "MKV"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 247
    const-string v0, "SDP"

    const/16 v1, 0x20

    const-string v2, "application/sdp"

    const-string v3, "SDP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 249
    const-string v0, "JPG"

    const-string v2, "image/jpeg"

    const-string v3, "JPEG"

    move v1, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 250
    const-string v0, "JPEG"

    const-string v2, "image/jpeg"

    const-string v3, "JPEG"

    move v1, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 251
    const-string v0, "MY5"

    const-string v2, "image/vnd.tmo.my5"

    const-string v3, "JPEG"

    move v1, v9

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 252
    const-string v0, "GIF"

    const/16 v1, 0x34

    const-string v2, "image/gif"

    const-string v3, "GIF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 253
    const-string v0, "PNG"

    const/16 v1, 0x35

    const-string v2, "image/png"

    const-string v3, "PNG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 254
    const-string v0, "BMP"

    const/16 v1, 0x36

    const-string v2, "image/x-ms-bmp"

    const-string v3, "Microsoft BMP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 255
    const-string v0, "WBMP"

    const/16 v1, 0x37

    const-string v2, "image/vnd.wap.wbmp"

    const-string v3, "Wireless BMP"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 257
    const-string v0, "QSS"

    const/16 v1, 0x56

    const-string v2, "slide/qss"

    const-string v3, "QSS"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 259
    const-string v0, "M3U"

    const/16 v1, 0x47

    const-string v2, "audio/x-mpegurl"

    const-string v3, "M3U"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 260
    const-string v0, "PLS"

    const/16 v1, 0x48

    const-string v2, "audio/x-scpls"

    const-string v3, "WPL"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 261
    const-string v0, "WPL"

    const/16 v1, 0x49

    const-string v2, "application/vnd.ms-wpl"

    const-string v3, " "

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 263
    const-string v0, "PDF"

    const/16 v1, 0x51

    const-string v2, "application/pdf"

    const-string v3, "Acrobat PDF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 264
    const-string v0, "DOC"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 265
    const-string v0, "DOCX"

    const/16 v1, 0x52

    const-string v2, "application/msword"

    const-string v3, "Microsoft Office WORD"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 266
    const-string v0, "XLS"

    const/16 v1, 0x53

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "Microsoft Office Excel"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 268
    const-string v0, "XLSX"

    const/16 v1, 0x53

    const-string v2, "application/vnd.ms-excel"

    const-string v3, "Microsoft Office Excel"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 270
    const-string v0, "PPT"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    move v1, v10

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 272
    const-string v0, "PPTX"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    move v1, v10

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 275
    const-string v0, "PPS"

    const-string v2, "application/vnd.ms-powerpoint"

    const-string v3, "Microsoft Office PowerPoint"

    move v1, v10

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 278
    const-string v0, "TXT"

    const/16 v1, 0x55

    const-string v2, "text/plain"

    const-string v3, "Text Document"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 280
    const-string v0, "SWF"

    const/16 v1, 0x5a

    const-string v2, "application/x-shockwave-flash"

    const-string v3, "SWF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 281
    const-string v0, "SVG"

    const/16 v1, 0x5b

    const-string v2, "image/svg+xml"

    const-string v3, "SVG"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 283
    const-string v0, "DCF"

    const/16 v1, 0x57

    const-string v2, "application/vnd.oma.drm.content"

    const-string v3, "DRM Content"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 284
    const-string v0, "ODF"

    const/16 v1, 0x58

    const-string v2, "application/vnd.oma.drm.content"

    const-string v3, "DRM Content"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 286
    const-string v0, "APK"

    const/16 v1, 0x64

    const-string v2, "application/apk"

    const-string v3, "Android package install file"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 288
    const-string v0, "JAD"

    const/16 v1, 0x6e

    const-string v2, "text/vnd.sun.j2me.app-descriptor "

    const-string v3, "JAD"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 289
    const-string v0, "JAR"

    const/16 v1, 0x6f

    const-string v2, "application/java-archive "

    const-string v3, "JAR"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 291
    const-string v0, "VCS"

    const/16 v1, 0x78

    const-string v2, "text/x-vCalendar"

    const-string v3, "VCS"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 292
    const-string v0, "VCF"

    const/16 v1, 0x79

    const-string v2, "text/x-vcard"

    const-string v3, "VCF"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 293
    const-string v0, "VNT"

    const/16 v1, 0x7a

    const-string v2, "text/x-vnote"

    const-string v3, "VNT"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 296
    const-string v0, "VTS"

    const/16 v1, 0x7a

    const-string v2, "text/x-vtodo"

    const-string v3, "VTS"

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/email/MediaFile;->addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    .line 299
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    .local v6, builder:Ljava/lang/StringBuilder;
    sget-object v0, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 302
    .local v7, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 304
    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 306
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/email/MediaFile;->sFileExtensions:Ljava/lang/String;

    .line 309
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    return-void
.end method

.method static addFileType(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .parameter "extension"
    .parameter "fileType"
    .parameter "mimeType"
    .parameter "desc"
    .parameter "iconSmall"
    .parameter "iconLarge"

    .prologue
    .line 205
    sget-object v6, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/email/MediaFile$MediaFileType;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/email/MediaFile$MediaFileType;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v6, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/email/MediaFile;->sMimeTypeMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lcom/android/email/MediaFile;->sMimeType:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public static getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;
    .locals 3
    .parameter "path"

    .prologue
    .line 350
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 351
    .local v0, lastDot:I
    if-gez v0, :cond_0

    .line 352
    const/4 v1, 0x0

    .line 353
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/email/MediaFile;->sFileTypeMap:Ljava/util/HashMap;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/email/MediaFile$MediaFileType;

    goto :goto_0
.end method

.method public static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 362
    invoke-static {p0}, Lcom/android/email/MediaFile;->getFileType(Ljava/lang/String;)Lcom/android/email/MediaFile$MediaFileType;

    move-result-object v0

    .line 381
    .local v0, mediaType:Lcom/android/email/MediaFile$MediaFileType;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/email/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    goto :goto_0
.end method
