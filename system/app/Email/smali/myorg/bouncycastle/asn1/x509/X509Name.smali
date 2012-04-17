.class public Lmyorg/bouncycastle/asn1/x509/X509Name;
.super Lmyorg/bouncycastle/asn1/ASN1Encodable;
.source "X509Name.java"


# static fields
.field public static final BUSINESS_CATEGORY:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final CN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_CITIZENSHIP:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final COUNTRY_OF_RESIDENCE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DATE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DMD_NAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DN_QUALIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final DefaultLookUp:Ljava/util/Hashtable;

.field public static DefaultReverse:Z

.field public static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final EmailAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private static final FALSE:Ljava/lang/Boolean;

.field public static final GENDER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GENERATION:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final GIVENNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final INITIALS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final L:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final NAME_AT_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final O:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final OIDLookUp:Ljava/util/Hashtable;

.field public static final OU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PLACE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_ADDRESS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final POSTAL_CODE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final PSEUDONYM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final RFC1779Symbols:Ljava/util/Hashtable;

.field public static final RFC2253Symbols:Ljava/util/Hashtable;

.field public static final SERIALNUMBER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final ST:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final STREET:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SURNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final SymbolLookUp:Ljava/util/Hashtable;

.field public static final T:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final TELEPHONE_NUMBER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field private static final TRUE:Ljava/lang/Boolean;

.field public static final UID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UNIQUE_IDENTIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

.field public static final UnstructuredName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;


# instance fields
.field private added:Ljava/util/Vector;

.field private converter:Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;

.field private hashCodeValue:I

.field private isHashCodeCalculated:Z

.field private ordering:Ljava/util/Vector;

.field private seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

.field private values:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 46
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->O:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 51
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->OU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 56
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->T:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 61
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->CN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 66
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->SN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 71
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->STREET:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 76
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->SN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->SERIALNUMBER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 81
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->L:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 86
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ST:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 91
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->SURNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 92
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 93
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->INITIALS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 94
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->GENERATION:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 95
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 100
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 105
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 110
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 115
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 120
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 126
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 132
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->GENDER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 138
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 145
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 151
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 157
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 162
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DMD_NAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 167
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_telephoneNumber:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 172
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;->id_at_name:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->NAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 180
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_emailAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 185
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 186
    sget-object v0, Lmyorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_unstructuredAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 191
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->E:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 196
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 202
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->UID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 209
    sput-boolean v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    .line 215
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    .line 221
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    .line 227
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    .line 232
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    .line 239
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->OIDLookUp:Ljava/util/Hashtable;

    .line 246
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->SymbolLookUp:Ljava/util/Hashtable;

    .line 248
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    .line 250
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v2}, Ljava/lang/Boolean;-><init>(Z)V

    sput-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    .line 253
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->O:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->T:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->OU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->CN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->L:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->ST:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->SN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SERIALNUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->DC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->UID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->STREET:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->SURNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->INITIALS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->GENERATION:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->GENDER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "TelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->NAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->O:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->OU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->CN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->L:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->ST:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->STREET:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->DC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC2253Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->UID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->O:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->OU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->CN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->L:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->ST:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->RFC1779Symbols:Ljava/util/Hashtable;

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->STREET:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "c"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->C:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "o"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->O:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "t"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->T:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "ou"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->OU:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "cn"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->CN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "l"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->L:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "st"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->ST:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "sn"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->SN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "serialnumber"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->SN:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "street"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->STREET:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "emailaddress"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->E:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dc"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->DC:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "e"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->E:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uid"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->UID:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "surname"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->SURNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "givenname"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->GIVENNAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "initials"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->INITIALS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "generation"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->GENERATION:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredaddress"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->UnstructuredAddress:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "unstructuredname"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->UnstructuredName:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "uniqueidentifier"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->UNIQUE_IDENTIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dn"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->DN_QUALIFIER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "pseudonym"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->PSEUDONYM:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postaladdress"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->POSTAL_ADDRESS:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "nameofbirth"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->NAME_AT_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofcitizenship"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_CITIZENSHIP:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "countryofresidence"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->COUNTRY_OF_RESIDENCE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "gender"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->GENDER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "placeofbirth"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->PLACE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "dateofbirth"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "postalcode"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->POSTAL_CODE:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "businesscategory"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->BUSINESS_CATEGORY:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "telephonenumber"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->TELEPHONE_NUMBER:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    const-string v1, "name"

    sget-object v2, Lmyorg/bouncycastle/asn1/x509/X509Name;->NAME:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "dirName"

    .prologue
    .line 522
    sget-boolean v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultLookUp:Ljava/util/Hashtable;

    invoke-direct {p0, v0, v1, p1}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public constructor <init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 10
    .parameter "seq"

    .prologue
    const/4 v9, 0x0

    .line 375
    invoke-direct {p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 340
    const/4 v6, 0x0

    iput-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->converter:Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 341
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 342
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 343
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 376
    iput-object p1, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 378
    invoke-virtual {p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 380
    .local v0, e:Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 381
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    .line 383
    .local v3, set:Lmyorg/bouncycastle/asn1/ASN1Set;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v3}, Lmyorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 384
    invoke-virtual {v3, v1}, Lmyorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 386
    .local v2, s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 387
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "badly sized pair"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 390
    :cond_1
    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 392
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lmyorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    .line 393
    .local v5, value:Lmyorg/bouncycastle/asn1/DEREncodable;
    instance-of v6, v5, Lmyorg/bouncycastle/asn1/DERString;

    if-eqz v6, :cond_3

    instance-of v6, v5, Lmyorg/bouncycastle/asn1/DERUniversalString;

    if-nez v6, :cond_3

    .line 394
    check-cast v5, Lmyorg/bouncycastle/asn1/DERString;

    .end local v5           #value:Lmyorg/bouncycastle/asn1/DEREncodable;
    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v4

    .line 395
    .local v4, v:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x23

    if-ne v6, v7, :cond_2

    .line 396
    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\\"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 404
    .end local v4           #v:Ljava/lang/String;
    :goto_1
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    if-eqz v1, :cond_4

    sget-object v6, Lmyorg/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    :goto_2
    invoke-virtual {v7, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 398
    .restart local v4       #v:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 401
    .end local v4           #v:Ljava/lang/String;
    .restart local v5       #value:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_3
    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "#"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    invoke-virtual {v8}, Lmyorg/bouncycastle/asn1/DERObject;->getDEREncoded()[B

    move-result-object v8

    invoke-static {v8}, Lmyorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v8

    invoke-direct {p0, v8}, Lmyorg/bouncycastle/asn1/x509/X509Name;->bytesToString([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 404
    .end local v5           #value:Lmyorg/bouncycastle/asn1/DEREncodable;
    :cond_4
    sget-object v6, Lmyorg/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    goto :goto_2

    .line 408
    .end local v1           #i:I
    .end local v2           #s:Lmyorg/bouncycastle/asn1/ASN1Sequence;
    .end local v3           #set:Lmyorg/bouncycastle/asn1/ASN1Set;
    :cond_5
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;)V
    .locals 1
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"

    .prologue
    .line 571
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;

    invoke-direct {v0}, Lmyorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(ZLjava/util/Hashtable;Ljava/lang/String;Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V

    .line 572
    return-void
.end method

.method public constructor <init>(ZLjava/util/Hashtable;Ljava/lang/String;Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;)V
    .locals 20
    .parameter "reverse"
    .parameter "lookUp"
    .parameter "dirName"
    .parameter "converter"

    .prologue
    .line 607
    invoke-direct/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 340
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->converter:Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 341
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 342
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 343
    new-instance v18, Ljava/util/Vector;

    invoke-direct/range {v18 .. v18}, Ljava/util/Vector;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 608
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->converter:Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    .line 609
    new-instance v6, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;)V

    .line 611
    .local v6, nTok:Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 612
    invoke-virtual {v6}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 613
    .local v13, token:Ljava/lang/String;
    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 615
    .local v5, index:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_1

    .line 616
    new-instance v18, Ljava/lang/IllegalArgumentException;

    const-string v19, "badly formated directory string"

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 619
    :cond_1
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 620
    .local v7, name:Ljava/lang/String;
    add-int/lit8 v18, v5, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 621
    .local v16, value:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v7, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    .line 623
    .local v11, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v18, 0x2b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    if-lez v18, :cond_2

    .line 624
    new-instance v15, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;

    const/16 v18, 0x2b

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;-><init>(Ljava/lang/String;C)V

    .line 625
    .local v15, vTok:Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;
    invoke-virtual {v15}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 627
    .local v14, v:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 629
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    sget-object v19, Lmyorg/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 631
    :goto_1
    invoke-virtual {v15}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->hasMoreTokens()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 632
    invoke-virtual {v15}, Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 633
    .local v12, sv:Ljava/lang/String;
    const/16 v18, 0x3d

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 635
    .local v8, ndx:I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 636
    .local v9, nm:Ljava/lang/String;
    add-int/lit8 v18, v8, 0x1

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    .line 637
    .local v17, vl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    sget-object v19, Lmyorg/bouncycastle/asn1/x509/X509Name;->TRUE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 642
    .end local v8           #ndx:I
    .end local v9           #nm:Ljava/lang/String;
    .end local v12           #sv:Ljava/lang/String;
    .end local v14           #v:Ljava/lang/String;
    .end local v15           #vTok:Lmyorg/bouncycastle/asn1/x509/X509NameTokenizer;
    .end local v17           #vl:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    sget-object v19, Lmyorg/bouncycastle/asn1/x509/X509Name;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 648
    .end local v5           #index:I
    .end local v7           #name:Ljava/lang/String;
    .end local v11           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v13           #token:Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_3
    if-eqz p1, :cond_6

    .line 649
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 650
    .local v10, o:Ljava/util/Vector;
    new-instance v14, Ljava/util/Vector;

    invoke-direct {v14}, Ljava/util/Vector;-><init>()V

    .line 651
    .local v14, v:Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 653
    .local v2, a:Ljava/util/Vector;
    const/4 v3, 0x1

    .line 655
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Vector;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v4, v0, :cond_5

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_4

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v10, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 660
    add-int/lit8 v3, v3, 0x1

    .line 655
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 662
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 664
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 665
    const/4 v3, 0x1

    goto :goto_3

    .line 669
    :cond_5
    move-object/from16 v0, p0

    iput-object v10, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    .line 670
    move-object/from16 v0, p0

    iput-object v14, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    .line 671
    move-object/from16 v0, p0

    iput-object v2, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    .line 673
    .end local v2           #a:Ljava/util/Vector;
    .end local v3           #count:I
    .end local v4           #i:I
    .end local v10           #o:Ljava/util/Vector;
    .end local v14           #v:Ljava/util/Vector;
    :cond_6
    return-void
.end method

.method private appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V
    .locals 7
    .parameter "buf"
    .parameter "oidSymbols"
    .parameter "oid"
    .parameter "value"

    .prologue
    const/16 v6, 0x5c

    const/16 v5, 0x3d

    .line 975
    invoke-virtual {p2, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 977
    .local v2, sym:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 978
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 983
    :goto_0
    invoke-virtual {p1, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 985
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 987
    .local v1, index:I
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 989
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 991
    .local v0, end:I
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_0

    .line 992
    add-int/lit8 v1, v1, 0x2

    .line 995
    :cond_0
    :goto_1
    if-eq v1, v0, :cond_4

    .line 996
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v6, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x2b

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3c

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3e

    if-eq v3, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_2

    .line 1000
    :cond_1
    const-string v3, "\\"

    invoke-virtual {p1, v1, v3}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 1001
    add-int/lit8 v1, v1, 0x1

    .line 1002
    add-int/lit8 v0, v0, 0x1

    .line 1005
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 980
    .end local v0           #end:I
    .end local v1           #index:I
    :cond_3
    invoke-virtual {p3}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1007
    .restart local v0       #end:I
    .restart local v1       #index:I
    :cond_4
    return-void
.end method

.method private bytesToString([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 1066
    array-length v2, p1

    new-array v0, v2, [C

    .line 1068
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, v0

    if-eq v1, v2, :cond_0

    .line 1069
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 1068
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1072
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 932
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x23

    if-ne v2, v3, :cond_0

    .line 935
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->decodeObject(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    .line 937
    .local v0, obj:Lmyorg/bouncycastle/asn1/DERObject;
    instance-of v2, v0, Lmyorg/bouncycastle/asn1/DERString;

    if-eqz v2, :cond_0

    .line 938
    check-cast v0, Lmyorg/bouncycastle/asn1/DERString;

    .end local v0           #obj:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-interface {v0}, Lmyorg/bouncycastle/asn1/DERString;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 942
    :cond_0
    return-object v1
.end method

.method private decodeOID(Ljava/lang/String;Ljava/util/Hashtable;)Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .locals 4
    .parameter "name"
    .parameter "lookUp"

    .prologue
    const/4 v3, 0x0

    .line 575
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "OID."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 576
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    .line 587
    :cond_0
    :goto_0
    return-object v0

    .line 577
    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_2

    .line 578
    new-instance v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p1}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 581
    :cond_2
    invoke-static {p1}, Lmyorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 582
    .local v0, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    if-nez v0, :cond_0

    .line 583
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object id - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - passed to distinguished name"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private decodeObject(Ljava/lang/String;)Lmyorg/bouncycastle/asn1/ASN1Object;
    .locals 4
    .parameter "oValue"

    .prologue
    .line 947
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/util/encoders/Hex;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lmyorg/bouncycastle/asn1/ASN1Object;->fromByteArray([B)Lmyorg/bouncycastle/asn1/ASN1Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 948
    :catch_0
    move-exception v0

    .line 949
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown encoding in name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 916
    invoke-direct {p0, p1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 917
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, p2}, Lmyorg/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 919
    .local v0, oValue:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 920
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 921
    invoke-direct {p0, v0}, Lmyorg/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 924
    const/4 v2, 0x0

    .line 928
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 3
    .parameter "obj"

    .prologue
    .line 362
    if-eqz p0, :cond_0

    instance-of v0, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;

    if-eqz v0, :cond_1

    .line 363
    :cond_0
    check-cast p0, Lmyorg/bouncycastle/asn1/x509/X509Name;

    .line 365
    .end local p0
    :goto_0
    return-object p0

    .line 364
    .restart local p0
    :cond_1
    instance-of v0, p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_2

    .line 365
    new-instance v0, Lmyorg/bouncycastle/asn1/x509/X509Name;

    check-cast p0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lmyorg/bouncycastle/asn1/x509/X509Name;-><init>(Lmyorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    .line 368
    .restart local p0
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/x509/X509Name;
    .locals 1
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 358
    invoke-static {p0, p1}, Lmyorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lmyorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method private stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    const/16 v5, 0x20

    .line 954
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 956
    .local v3, res:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 957
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 959
    .local v0, c1:C
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 961
    const/4 v2, 0x1

    .local v2, k:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 962
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 963
    .local v1, c2:C
    if-ne v0, v5, :cond_0

    if-eq v1, v5, :cond_1

    .line 964
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 966
    :cond_1
    move v0, v1

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 970
    .end local v0           #c1:C
    .end local v1           #c2:C
    .end local v2           #k:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 20
    .parameter "obj"

    .prologue
    .line 840
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_0

    .line 841
    const/16 v17, 0x1

    .line 912
    :goto_0
    return v17

    .line 844
    :cond_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;

    move/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p1

    instance-of v0, v0, Lmyorg/bouncycastle/asn1/ASN1Sequence;

    move/from16 v17, v0

    if-nez v17, :cond_1

    .line 845
    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    move-object/from16 v17, p1

    .line 848
    check-cast v17, Lmyorg/bouncycastle/asn1/DEREncodable;

    invoke-interface/range {v17 .. v17}, Lmyorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    .line 850
    .local v3, derO:Lmyorg/bouncycastle/asn1/DERObject;
    invoke-virtual/range {p0 .. p0}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getDERObject()Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lmyorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 851
    const/16 v17, 0x1

    goto :goto_0

    .line 857
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lmyorg/bouncycastle/asn1/x509/X509Name;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 862
    .local v14, other:Lmyorg/bouncycastle/asn1/x509/X509Name;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v13

    .line 864
    .local v13, orderingSize:I
    iget-object v0, v14, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Vector;->size()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_3

    .line 865
    const/16 v17, 0x0

    goto :goto_0

    .line 858
    .end local v13           #orderingSize:I
    .end local v14           #other:Lmyorg/bouncycastle/asn1/x509/X509Name;
    :catch_0
    move-exception v4

    .line 859
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const/16 v17, 0x0

    goto :goto_0

    .line 868
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    .restart local v13       #orderingSize:I
    .restart local v14       #other:Lmyorg/bouncycastle/asn1/x509/X509Name;
    :cond_3
    new-array v8, v13, [Z

    .line 871
    .local v8, indexes:[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    iget-object v0, v14, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 874
    const/4 v15, 0x0

    .line 875
    .local v15, start:I
    move v5, v13

    .line 876
    .local v5, end:I
    const/4 v2, 0x1

    .line 884
    .local v2, delta:I
    :goto_1
    move v7, v15

    .local v7, i:I
    :goto_2
    if-eq v7, v5, :cond_9

    .line 885
    const/4 v6, 0x0

    .line 886
    .local v6, found:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 887
    .local v12, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 889
    .local v16, value:Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_3
    if-ge v9, v13, :cond_7

    .line 890
    aget-boolean v17, v8, v9

    if-eqz v17, :cond_6

    .line 889
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 879
    .end local v2           #delta:I
    .end local v5           #end:I
    .end local v6           #found:Z
    .end local v7           #i:I
    .end local v9           #j:I
    .end local v12           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v15           #start:I
    .end local v16           #value:Ljava/lang/String;
    :cond_5
    add-int/lit8 v15, v13, -0x1

    .line 880
    .restart local v15       #start:I
    const/4 v5, -0x1

    .line 881
    .restart local v5       #end:I
    const/4 v2, -0x1

    .restart local v2       #delta:I
    goto :goto_1

    .line 894
    .restart local v6       #found:Z
    .restart local v7       #i:I
    .restart local v9       #j:I
    .restart local v12       #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v16       #value:Ljava/lang/String;
    :cond_6
    iget-object v0, v14, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 896
    .local v10, oOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v12, v10}, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 897
    iget-object v0, v14, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 899
    .local v11, oValue:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v11}, Lmyorg/bouncycastle/asn1/x509/X509Name;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 900
    const/16 v17, 0x1

    aput-boolean v17, v8, v9

    .line 901
    const/4 v6, 0x1

    .line 907
    .end local v10           #oOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v11           #oValue:Ljava/lang/String;
    :cond_7
    if-nez v6, :cond_8

    .line 908
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 884
    :cond_8
    add-int/2addr v7, v2

    goto :goto_2

    .line 912
    .end local v6           #found:Z
    .end local v9           #j:I
    .end local v12           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v16           #value:Ljava/lang/String;
    :cond_9
    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public getValues(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;)Ljava/util/Vector;
    .locals 6
    .parameter "oid"

    .prologue
    const/4 v5, 0x1

    .line 707
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 709
    .local v1, v:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 710
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 711
    iget-object v3, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 713
    .local v2, val:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_1

    .line 714
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 709
    .end local v2           #val:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    .restart local v2       #val:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 721
    .end local v2           #val:Ljava/lang/String;
    :cond_2
    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 817
    iget-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    if-eqz v2, :cond_0

    .line 818
    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 833
    :goto_0
    return v2

    .line 821
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->isHashCodeCalculated:Z

    .line 824
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 825
    iget-object v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 827
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 828
    invoke-direct {p0, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->stripInternalSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 830
    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    iput v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 833
    .end local v1           #value:Ljava/lang/String;
    :cond_1
    iget v2, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->hashCodeValue:I

    goto :goto_0
.end method

.method public toASN1Object()Lmyorg/bouncycastle/asn1/DERObject;
    .locals 8

    .prologue
    .line 725
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v7, :cond_3

    .line 726
    new-instance v6, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 727
    .local v6, vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 728
    .local v3, sVec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v1, 0x0

    .line 730
    .local v1, lstOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-eq v0, v7, :cond_2

    .line 731
    new-instance v5, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v5}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 732
    .local v5, v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 734
    .local v2, oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v5, v2}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 736
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 738
    .local v4, str:Ljava/lang/String;
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->converter:Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;

    invoke-virtual {v7, v2, v4}, Lmyorg/bouncycastle/asn1/x509/X509NameEntryConverter;->getConvertedValue(Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lmyorg/bouncycastle/asn1/DERObject;

    move-result-object v7

    invoke-virtual {v5, v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 740
    if-eqz v1, :cond_0

    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 741
    :cond_0
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 749
    :goto_1
    move-object v1, v2

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 743
    :cond_1
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v3}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v6, v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 744
    new-instance v3, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;

    .end local v3           #sVec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {v3}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 746
    .restart local v3       #sVec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v5}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1

    .line 752
    .end local v2           #oid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #v:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_2
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSet;

    invoke-direct {v7, v3}, Lmyorg/bouncycastle/asn1/DERSet;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v6, v7}, Lmyorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lmyorg/bouncycastle/asn1/DEREncodable;)V

    .line 754
    new-instance v7, Lmyorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v7, v6}, Lmyorg/bouncycastle/asn1/DERSequence;-><init>(Lmyorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    .line 757
    .end local v0           #i:I
    .end local v1           #lstOid:Lmyorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v3           #sVec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v6           #vec:Lmyorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_3
    iget-object v7, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->seq:Lmyorg/bouncycastle/asn1/ASN1Sequence;

    return-object v7
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1076
    sget-boolean v0, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultReverse:Z

    sget-object v1, Lmyorg/bouncycastle/asn1/x509/X509Name;->DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, v0, v1}, Lmyorg/bouncycastle/asn1/x509/X509Name;->toString(ZLjava/util/Hashtable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(ZLjava/util/Hashtable;)Ljava/lang/String;
    .locals 8
    .parameter "reverse"
    .parameter "oidSymbols"

    .prologue
    const/16 v7, 0x2c

    .line 1021
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 1022
    .local v1, buf:Ljava/lang/StringBuffer;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1023
    .local v2, components:Ljava/util/Vector;
    const/4 v3, 0x1

    .line 1025
    .local v3, first:Z
    const/4 v0, 0x0

    .line 1027
    .local v0, ava:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1028
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->added:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1029
    const/16 v5, 0x2b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1030
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v5, v6}, Lmyorg/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 1027
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1033
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0           #ava:Ljava/lang/StringBuffer;
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1034
    .restart local v0       #ava:Ljava/lang/StringBuffer;
    iget-object v5, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->ordering:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmyorg/bouncycastle/asn1/DERObjectIdentifier;

    iget-object v6, p0, Lmyorg/bouncycastle/asn1/x509/X509Name;->values:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {p0, v0, p2, v5, v6}, Lmyorg/bouncycastle/asn1/x509/X509Name;->appendValue(Ljava/lang/StringBuffer;Ljava/util/Hashtable;Lmyorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v2, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 1040
    :cond_1
    if-eqz p1, :cond_3

    .line 1041
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    :goto_2
    if-ltz v4, :cond_5

    .line 1042
    if-eqz v3, :cond_2

    .line 1043
    const/4 v3, 0x0

    .line 1048
    :goto_3
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1041
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 1045
    :cond_2
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1051
    :cond_3
    const/4 v4, 0x0

    :goto_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 1052
    if-eqz v3, :cond_4

    .line 1053
    const/4 v3, 0x0

    .line 1058
    :goto_5
    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1051
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1055
    :cond_4
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 1062
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
