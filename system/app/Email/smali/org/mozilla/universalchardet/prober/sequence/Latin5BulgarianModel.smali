.class public Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;
.super Lorg/mozilla/universalchardet/prober/sequence/BulgarianModel;
.source "Latin5BulgarianModel.java"


# static fields
.field private static final latin5BulgarianCharToOrderMap:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0x100

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;->latin5BulgarianCharToOrderMap:[S

    return-void

    :array_0
    .array-data 0x2
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfet 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfet 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfft 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfct 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0x4dt 0x0t
        0x5at 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x48t 0x0t
        0x6dt 0x0t
        0x6bt 0x0t
        0x65t 0x0t
        0x4ft 0x0t
        0xb9t 0x0t
        0x51t 0x0t
        0x66t 0x0t
        0x4ct 0x0t
        0x5et 0x0t
        0x52t 0x0t
        0x6et 0x0t
        0xbat 0x0t
        0x6ct 0x0t
        0x5bt 0x0t
        0x4at 0x0t
        0x77t 0x0t
        0x54t 0x0t
        0x60t 0x0t
        0x6ft 0x0t
        0xbbt 0x0t
        0x73t 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0x41t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x42t 0x0t
        0x3ft 0x0t
        0x44t 0x0t
        0x70t 0x0t
        0x67t 0x0t
        0x5ct 0x0t
        0xc2t 0x0t
        0x68t 0x0t
        0x5ft 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x47t 0x0t
        0x74t 0x0t
        0xc3t 0x0t
        0x55t 0x0t
        0x5dt 0x0t
        0x61t 0x0t
        0x71t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xfdt 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xcbt 0x0t
        0xcct 0x0t
        0xcdt 0x0t
        0xcet 0x0t
        0xcft 0x0t
        0xd0t 0x0t
        0xd1t 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xdbt 0x0t
        0xdct 0x0t
        0xddt 0x0t
        0xdet 0x0t
        0xdft 0x0t
        0xe0t 0x0t
        0xe1t 0x0t
        0x51t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0x69t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xebt 0x0t
        0xect 0x0t
        0x2dt 0x0t
        0xedt 0x0t
        0xeet 0x0t
        0x1ft 0x0t
        0x20t 0x0t
        0x23t 0x0t
        0x2bt 0x0t
        0x25t 0x0t
        0x2ct 0x0t
        0x37t 0x0t
        0x2ft 0x0t
        0x28t 0x0t
        0x3bt 0x0t
        0x21t 0x0t
        0x2et 0x0t
        0x26t 0x0t
        0x24t 0x0t
        0x29t 0x0t
        0x1et 0x0t
        0x27t 0x0t
        0x1ct 0x0t
        0x22t 0x0t
        0x33t 0x0t
        0x30t 0x0t
        0x31t 0x0t
        0x35t 0x0t
        0x32t 0x0t
        0x36t 0x0t
        0x39t 0x0t
        0x3dt 0x0t
        0xeft 0x0t
        0x43t 0x0t
        0xf0t 0x0t
        0x3ct 0x0t
        0x38t 0x0t
        0x1t 0x0t
        0x12t 0x0t
        0x9t 0x0t
        0x14t 0x0t
        0xbt 0x0t
        0x3t 0x0t
        0x17t 0x0t
        0xft 0x0t
        0x2t 0x0t
        0x1at 0x0t
        0xct 0x0t
        0xat 0x0t
        0xet 0x0t
        0x6t 0x0t
        0x4t 0x0t
        0xdt 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x5t 0x0t
        0x13t 0x0t
        0x1dt 0x0t
        0x19t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x1bt 0x0t
        0x18t 0x0t
        0x11t 0x0t
        0x4bt 0x0t
        0x34t 0x0t
        0xf1t 0x0t
        0x2at 0x0t
        0x10t 0x0t
        0x3et 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0x3at 0x0t
        0xf5t 0x0t
        0x62t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfbt 0x0t
        0x5bt 0x0t
        0xfct 0x0t
        0xfdt 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lorg/mozilla/universalchardet/prober/sequence/Latin5BulgarianModel;->latin5BulgarianCharToOrderMap:[S

    sget-object v1, Lorg/mozilla/universalchardet/Constants;->CHARSET_ISO_8859_5:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/universalchardet/prober/sequence/BulgarianModel;-><init>([SLjava/lang/String;)V

    .line 48
    return-void
.end method
