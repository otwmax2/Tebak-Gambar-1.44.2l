###### Class pa.d (pa.d)
.class final Lpa/d;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lpa/d$b;,
        Lpa/d$a;
    }
.end annotation


# static fields
.field static final a:[Lpa/c;

.field static final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lokio/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/16 v0, 0x3d

    new-array v0, v0, [Lpa/c;

    .line 1
    new-instance v1, Lpa/c;

    sget-object v2, Lpa/c;->i:Lokio/f;

    const-string v3, ""

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    sget-object v2, Lpa/c;->f:Lokio/f;

    const-string v4, "GET"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "POST"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    sget-object v2, Lpa/c;->g:Lokio/f;

    const-string v4, "/"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "/index.html"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    sget-object v2, Lpa/c;->h:Lokio/f;

    const-string v4, "http"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "https"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    sget-object v2, Lpa/c;->e:Lokio/f;

    const-string v4, "200"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/4 v4, 0x7

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "204"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "206"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/16 v4, 0x9

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "304"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/16 v4, 0xa

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "400"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/16 v4, 0xb

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "404"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/16 v4, 0xc

    aput-object v1, v0, v4

    new-instance v1, Lpa/c;

    const-string v4, "500"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Lokio/f;Ljava/lang/String;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "accept-charset"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "accept-encoding"

    const-string v4, "gzip, deflate"

    invoke-direct {v1, v2, v4}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "accept-language"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "accept-ranges"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "accept"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x12

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "access-control-allow-origin"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x13

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "age"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x14

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "allow"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "authorization"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "cache-control"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-disposition"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-encoding"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-language"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-length"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-location"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-range"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "content-type"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "cookie"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "date"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "etag"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "expect"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "expires"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "from"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "host"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "if-match"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "if-modified-since"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "if-none-match"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "if-range"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x29

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "if-unmodified-since"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "last-modified"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "link"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "location"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "max-forwards"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "proxy-authenticate"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "proxy-authorization"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x30

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "range"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x31

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "referer"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "refresh"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x33

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "retry-after"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x34

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "server"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x35

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "set-cookie"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x36

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "strict-transport-security"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x37

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "transfer-encoding"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x38

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "user-agent"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x39

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "vary"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "via"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    new-instance v1, Lpa/c;

    const-string v2, "www-authenticate"

    invoke-direct {v1, v2, v3}, Lpa/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sput-object v0, Lpa/d;->a:[Lpa/c;

    .line 2
    invoke-static {}, Lpa/d;->b()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lpa/d;->b:Ljava/util/Map;

    return-void
.end method

.method static a(Lokio/f;)Lokio/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lokio/f;->J()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_32

    .line 2
    invoke-virtual {p0, v1}, Lokio/f;->m(I)B

    move-result v2

    const/16 v3, 0x41

    if-lt v2, v3, :cond_2f

    const/16 v3, 0x5a

    if-le v2, v3, :cond_14

    goto :goto_2f

    .line 3
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROTOCOL_ERROR response malformed: mixed case name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokio/f;->O()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_32
    return-object p0
.end method

.method private static b()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lokio/f;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lpa/d;->a:[Lpa/c;

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    const/4 v1, 0x0

    .line 2
    :goto_9
    sget-object v2, Lpa/d;->a:[Lpa/c;

    array-length v3, v2

    if-ge v1, v3, :cond_26

    .line 3
    aget-object v3, v2, v1

    iget-object v3, v3, Lpa/c;->a:Lokio/f;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 4
    aget-object v2, v2, v1

    iget-object v2, v2, Lpa/c;->a:Lokio/f;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 5
    :cond_26
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

###### Class pa.d.a (pa.d$a)
.class final Lpa/d$a;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lpa/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lokio/e;

.field private final c:I

.field private d:I

.field e:[Lpa/c;

.field f:I

.field g:I

.field h:I


# direct methods
.method constructor <init>(IILokio/u;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lpa/d$a;->a:Ljava/util/List;

    const/16 v0, 0x8

    new-array v0, v0, [Lpa/c;

    .line 4
    iput-object v0, p0, Lpa/d$a;->e:[Lpa/c;

    .line 5
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpa/d$a;->f:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lpa/d$a;->g:I

    .line 7
    iput v0, p0, Lpa/d$a;->h:I

    .line 8
    iput p1, p0, Lpa/d$a;->c:I

    .line 9
    iput p2, p0, Lpa/d$a;->d:I

    .line 10
    invoke-static {p3}, Lokio/n;->c(Lokio/u;)Lokio/e;

    move-result-object p1

    iput-object p1, p0, Lpa/d$a;->b:Lokio/e;

    return-void
.end method

.method constructor <init>(ILokio/u;)V
    .registers 3

    .line 1
    invoke-direct {p0, p1, p1, p2}, Lpa/d$a;-><init>(IILokio/u;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    iget v0, p0, Lpa/d$a;->d:I

    iget v1, p0, Lpa/d$a;->h:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    .line 2
    invoke-direct {p0}, Lpa/d$a;->b()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    .line 3
    invoke-direct {p0, v1}, Lpa/d$a;->d(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lpa/d$a;->e:[Lpa/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lpa/d$a;->e:[Lpa/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpa/d$a;->f:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lpa/d$a;->g:I

    .line 4
    iput v0, p0, Lpa/d$a;->h:I

    return-void
.end method

.method private c(I)I
    .registers 3

    .line 1
    iget v0, p0, Lpa/d$a;->f:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private d(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_3a

    .line 1
    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lpa/d$a;->f:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    .line 2
    iget-object v2, p0, Lpa/d$a;->e:[Lpa/c;

    aget-object v3, v2, v1

    iget v3, v3, Lpa/c;->c:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Lpa/d$a;->h:I

    aget-object v2, v2, v1

    iget v2, v2, Lpa/c;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lpa/d$a;->h:I

    .line 4
    iget v2, p0, Lpa/d$a;->g:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lpa/d$a;->g:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 5
    :cond_29
    iget-object p1, p0, Lpa/d$a;->e:[Lpa/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lpa/d$a;->g:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget p1, p0, Lpa/d$a;->f:I

    add-int/2addr p1, v0

    iput p1, p0, Lpa/d$a;->f:I

    :cond_3a
    return v0
.end method

.method private f(I)Lokio/f;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpa/d$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    sget-object v0, Lpa/d;->a:[Lpa/c;

    aget-object p1, v0, p1

    iget-object p1, p1, Lpa/c;->a:Lokio/f;

    return-object p1

    .line 3
    :cond_d
    sget-object v0, Lpa/d;->a:[Lpa/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lpa/d$a;->c(I)I

    move-result v0

    if-ltz v0, :cond_22

    .line 4
    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    array-length v2, v1

    if-ge v0, v2, :cond_22

    .line 5
    aget-object p1, v1, v0

    iget-object p1, p1, Lpa/c;->a:Lokio/f;

    return-object p1

    .line 6
    :cond_22
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g(ILpa/c;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lpa/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget v0, p2, Lpa/c;->c:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_15

    .line 3
    iget-object v2, p0, Lpa/d$a;->e:[Lpa/c;

    invoke-direct {p0, p1}, Lpa/d$a;->c(I)I

    move-result v3

    aget-object v2, v2, v3

    iget v2, v2, Lpa/c;->c:I

    sub-int/2addr v0, v2

    .line 4
    :cond_15
    iget v2, p0, Lpa/d$a;->d:I

    if-le v0, v2, :cond_1d

    .line 5
    invoke-direct {p0}, Lpa/d$a;->b()V

    return-void

    .line 6
    :cond_1d
    iget v3, p0, Lpa/d$a;->h:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 7
    invoke-direct {p0, v3}, Lpa/d$a;->d(I)I

    move-result v2

    if-ne p1, v1, :cond_55

    .line 8
    iget p1, p0, Lpa/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    array-length v2, v1

    if-le p1, v2, :cond_44

    .line 9
    array-length p1, v1

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lpa/c;

    const/4 v2, 0x0

    .line 10
    array-length v3, v1

    array-length v4, v1

    invoke-static {v1, v2, p1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lpa/d$a;->f:I

    .line 12
    iput-object p1, p0, Lpa/d$a;->e:[Lpa/c;

    .line 13
    :cond_44
    iget p1, p0, Lpa/d$a;->f:I

    add-int/lit8 v1, p1, -0x1

    iput v1, p0, Lpa/d$a;->f:I

    .line 14
    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    aput-object p2, v1, p1

    .line 15
    iget p1, p0, Lpa/d$a;->g:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lpa/d$a;->g:I

    goto :goto_5f

    .line 16
    :cond_55
    invoke-direct {p0, p1}, Lpa/d$a;->c(I)I

    move-result v1

    add-int/2addr v1, v2

    add-int/2addr p1, v1

    .line 17
    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    aput-object p2, v1, p1

    .line 18
    :goto_5f
    iget p1, p0, Lpa/d$a;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lpa/d$a;->h:I

    return-void
.end method

.method private h(I)Z
    .registers 4

    const/4 v0, 0x1

    if-ltz p1, :cond_a

    .line 1
    sget-object v1, Lpa/d;->a:[Lpa/c;

    array-length v1, v1

    sub-int/2addr v1, v0

    if-gt p1, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private i()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lpa/d$a;->b:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private l(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpa/d$a;->h(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2
    sget-object v0, Lpa/d;->a:[Lpa/c;

    aget-object p1, v0, p1

    .line 3
    iget-object v0, p0, Lpa/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 4
    :cond_10
    sget-object v0, Lpa/d;->a:[Lpa/c;

    array-length v0, v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0}, Lpa/d$a;->c(I)I

    move-result v0

    if-ltz v0, :cond_28

    .line 5
    iget-object v1, p0, Lpa/d$a;->e:[Lpa/c;

    array-length v2, v1

    if-ge v0, v2, :cond_28

    .line 6
    iget-object p1, p0, Lpa/d$a;->a:Ljava/util/List;

    aget-object v0, v1, v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_27
    return-void

    .line 7
    :cond_28
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Header index too large "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private n(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpa/d$a;->f(I)Lokio/f;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lpa/d$a;->j()Lokio/f;

    move-result-object v0

    .line 3
    new-instance v1, Lpa/c;

    invoke-direct {v1, p1, v0}, Lpa/c;-><init>(Lokio/f;Lokio/f;)V

    const/4 p1, -0x1

    invoke-direct {p0, p1, v1}, Lpa/d$a;->g(ILpa/c;)V

    return-void
.end method

.method private o()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lpa/d$a;->j()Lokio/f;

    move-result-object v0

    invoke-static {v0}, Lpa/d;->a(Lokio/f;)Lokio/f;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lpa/d$a;->j()Lokio/f;

    move-result-object v1

    .line 3
    new-instance v2, Lpa/c;

    invoke-direct {v2, v0, v1}, Lpa/c;-><init>(Lokio/f;Lokio/f;)V

    const/4 v0, -0x1

    invoke-direct {p0, v0, v2}, Lpa/d$a;->g(ILpa/c;)V

    return-void
.end method

.method private p(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lpa/d$a;->f(I)Lokio/f;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lpa/d$a;->j()Lokio/f;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lpa/d$a;->a:Ljava/util/List;

    new-instance v2, Lpa/c;

    invoke-direct {v2, p1, v0}, Lpa/c;-><init>(Lokio/f;Lokio/f;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private q()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lpa/d$a;->j()Lokio/f;

    move-result-object v0

    invoke-static {v0}, Lpa/d;->a(Lokio/f;)Lokio/f;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lpa/d$a;->j()Lokio/f;

    move-result-object v1

    .line 3
    iget-object v2, p0, Lpa/d$a;->a:Ljava/util/List;

    new-instance v3, Lpa/c;

    invoke-direct {v3, v0, v1}, Lpa/c;-><init>(Lokio/f;Lokio/f;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public e()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lpa/d$a;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    iget-object v1, p0, Lpa/d$a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    return-object v0
.end method

.method j()Lokio/f;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpa/d$a;->i()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    const/16 v2, 0x7f

    .line 2
    invoke-virtual {p0, v0, v2}, Lpa/d$a;->m(II)I

    move-result v0

    if-eqz v1, :cond_29

    .line 3
    invoke-static {}, Lpa/k;->f()Lpa/k;

    move-result-object v1

    iget-object v2, p0, Lpa/d$a;->b:Lokio/e;

    int-to-long v3, v0

    invoke-interface {v2, v3, v4}, Lokio/e;->N2(J)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lpa/k;->c([B)[B

    move-result-object v0

    invoke-static {v0}, Lokio/f;->o([B)Lokio/f;

    move-result-object v0

    return-object v0

    .line 4
    :cond_29
    iget-object v1, p0, Lpa/d$a;->b:Lokio/e;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lokio/e;->h0(J)Lokio/f;

    move-result-object v0

    return-object v0
.end method

.method k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lpa/d$a;->b:Lokio/e;

    invoke-interface {v0}, Lokio/e;->S0()Z

    move-result v0

    if-nez v0, :cond_8d

    .line 2
    iget-object v0, p0, Lpa/d$a;->b:Lokio/e;

    invoke-interface {v0}, Lokio/e;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x80

    if-eq v0, v1, :cond_85

    and-int/lit16 v2, v0, 0x80

    if-ne v2, v1, :cond_24

    const/16 v1, 0x7f

    .line 3
    invoke-virtual {p0, v0, v1}, Lpa/d$a;->m(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 4
    invoke-direct {p0, v0}, Lpa/d$a;->l(I)V

    goto :goto_0

    :cond_24
    const/16 v1, 0x40

    if-ne v0, v1, :cond_2c

    .line 5
    invoke-direct {p0}, Lpa/d$a;->o()V

    goto :goto_0

    :cond_2c
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v1, :cond_3c

    const/16 v1, 0x3f

    .line 6
    invoke-virtual {p0, v0, v1}, Lpa/d$a;->m(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 7
    invoke-direct {p0, v0}, Lpa/d$a;->n(I)V

    goto :goto_0

    :cond_3c
    and-int/lit8 v1, v0, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_6d

    const/16 v1, 0x1f

    .line 8
    invoke-virtual {p0, v0, v1}, Lpa/d$a;->m(II)I

    move-result v0

    iput v0, p0, Lpa/d$a;->d:I

    if-ltz v0, :cond_54

    .line 9
    iget v1, p0, Lpa/d$a;->c:I

    if-gt v0, v1, :cond_54

    .line 10
    invoke-direct {p0}, Lpa/d$a;->a()V

    goto :goto_0

    .line 11
    :cond_54
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dynamic table size update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lpa/d$a;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    const/16 v1, 0x10

    if-eq v0, v1, :cond_80

    if-nez v0, :cond_74

    goto :goto_80

    :cond_74
    const/16 v1, 0xf

    .line 12
    invoke-virtual {p0, v0, v1}, Lpa/d$a;->m(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 13
    invoke-direct {p0, v0}, Lpa/d$a;->p(I)V

    goto :goto_0

    .line 14
    :cond_80
    :goto_80
    invoke-direct {p0}, Lpa/d$a;->q()V

    goto/16 :goto_0

    .line 15
    :cond_85
    new-instance v0, Ljava/io/IOException;

    const-string v1, "index == 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    return-void
.end method

.method m(II)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/2addr p1, p2

    if-ge p1, p2, :cond_4

    return p1

    :cond_4
    const/4 p1, 0x0

    .line 1
    :goto_5
    invoke-direct {p0}, Lpa/d$a;->i()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_14

    and-int/lit8 v0, v0, 0x7f

    shl-int/2addr v0, p1

    add-int/2addr p2, v0

    add-int/lit8 p1, p1, 0x7

    goto :goto_5

    :cond_14
    shl-int p1, v0, p1

    add-int/2addr p2, p1

    return p2
.end method

###### Class pa.d.b (pa.d$b)
.class final Lpa/d$b;
.super Ljava/lang/Object;
.source "Hpack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpa/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field private final a:Lokio/c;

.field private final b:Z

.field private c:I

.field private d:Z

.field e:I

.field f:I

.field g:[Lpa/c;

.field h:I

.field i:I

.field j:I


# direct methods
.method constructor <init>(IZLokio/c;)V
    .registers 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 3
    iput v0, p0, Lpa/d$b;->c:I

    const/16 v0, 0x8

    new-array v0, v0, [Lpa/c;

    .line 4
    iput-object v0, p0, Lpa/d$b;->g:[Lpa/c;

    .line 5
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpa/d$b;->h:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lpa/d$b;->i:I

    .line 7
    iput v0, p0, Lpa/d$b;->j:I

    .line 8
    iput p1, p0, Lpa/d$b;->e:I

    .line 9
    iput p1, p0, Lpa/d$b;->f:I

    .line 10
    iput-boolean p2, p0, Lpa/d$b;->b:Z

    .line 11
    iput-object p3, p0, Lpa/d$b;->a:Lokio/c;

    return-void
.end method

.method constructor <init>(Lokio/c;)V
    .registers 4

    const/16 v0, 0x1000

    const/4 v1, 0x1

    .line 1
    invoke-direct {p0, v0, v1, p1}, Lpa/d$b;-><init>(IZLokio/c;)V

    return-void
.end method

.method private a()V
    .registers 3

    .line 1
    iget v0, p0, Lpa/d$b;->f:I

    iget v1, p0, Lpa/d$b;->j:I

    if-ge v0, v1, :cond_10

    if-nez v0, :cond_c

    .line 2
    invoke-direct {p0}, Lpa/d$b;->b()V

    goto :goto_10

    :cond_c
    sub-int/2addr v1, v0

    .line 3
    invoke-direct {p0, v1}, Lpa/d$b;->c(I)I

    :cond_10
    :goto_10
    return-void
.end method

.method private b()V
    .registers 3

    .line 1
    iget-object v0, p0, Lpa/d$b;->g:[Lpa/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lpa/d$b;->g:[Lpa/c;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lpa/d$b;->h:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lpa/d$b;->i:I

    .line 4
    iput v0, p0, Lpa/d$b;->j:I

    return-void
.end method

.method private c(I)I
    .registers 6

    const/4 v0, 0x0

    if-lez p1, :cond_47

    .line 1
    iget-object v1, p0, Lpa/d$b;->g:[Lpa/c;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    :goto_8
    iget v2, p0, Lpa/d$b;->h:I

    if-lt v1, v2, :cond_29

    if-lez p1, :cond_29

    .line 2
    iget-object v2, p0, Lpa/d$b;->g:[Lpa/c;

    aget-object v3, v2, v1

    iget v3, v3, Lpa/c;->c:I

    sub-int/2addr p1, v3

    .line 3
    iget v3, p0, Lpa/d$b;->j:I

    aget-object v2, v2, v1

    iget v2, v2, Lpa/c;->c:I

    sub-int/2addr v3, v2

    iput v3, p0, Lpa/d$b;->j:I

    .line 4
    iget v2, p0, Lpa/d$b;->i:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lpa/d$b;->i:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 5
    :cond_29
    iget-object p1, p0, Lpa/d$b;->g:[Lpa/c;

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget v3, p0, Lpa/d$b;->i:I

    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    iget-object p1, p0, Lpa/d$b;->g:[Lpa/c;

    iget v1, p0, Lpa/d$b;->h:I

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 7
    iget p1, p0, Lpa/d$b;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lpa/d$b;->h:I

    :cond_47
    return v0
.end method

.method private d(Lpa/c;)V
    .registers 8

    .line 1
    iget v0, p1, Lpa/c;->c:I

    .line 2
    iget v1, p0, Lpa/d$b;->f:I

    if-le v0, v1, :cond_a

    .line 3
    invoke-direct {p0}, Lpa/d$b;->b()V

    return-void

    .line 4
    :cond_a
    iget v2, p0, Lpa/d$b;->j:I

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    .line 5
    invoke-direct {p0, v2}, Lpa/d$b;->c(I)I

    .line 6
    iget v1, p0, Lpa/d$b;->i:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lpa/d$b;->g:[Lpa/c;

    array-length v3, v2

    if-le v1, v3, :cond_2e

    .line 7
    array-length v1, v2

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [Lpa/c;

    const/4 v3, 0x0

    .line 8
    array-length v4, v2

    array-length v5, v2

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget-object v2, p0, Lpa/d$b;->g:[Lpa/c;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lpa/d$b;->h:I

    .line 10
    iput-object v1, p0, Lpa/d$b;->g:[Lpa/c;

    .line 11
    :cond_2e
    iget v1, p0, Lpa/d$b;->h:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lpa/d$b;->h:I

    .line 12
    iget-object v2, p0, Lpa/d$b;->g:[Lpa/c;

    aput-object p1, v2, v1

    .line 13
    iget p1, p0, Lpa/d$b;->i:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lpa/d$b;->i:I

    .line 14
    iget p1, p0, Lpa/d$b;->j:I

    add-int/2addr p1, v0

    iput p1, p0, Lpa/d$b;->j:I

    return-void
.end method


# virtual methods
.method e(I)V
    .registers 3

    .line 1
    iput p1, p0, Lpa/d$b;->e:I

    const/16 v0, 0x4000

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 3
    iget v0, p0, Lpa/d$b;->f:I

    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    if-ge p1, v0, :cond_17

    .line 4
    iget v0, p0, Lpa/d$b;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lpa/d$b;->c:I

    :cond_17
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lpa/d$b;->d:Z

    .line 6
    iput p1, p0, Lpa/d$b;->f:I

    .line 7
    invoke-direct {p0}, Lpa/d$b;->a()V

    return-void
.end method

.method f(Lokio/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lpa/d$b;->b:Z

    const/16 v1, 0x7f

    if-eqz v0, :cond_33

    invoke-static {}, Lpa/k;->f()Lpa/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpa/k;->e(Lokio/f;)I

    move-result v0

    invoke-virtual {p1}, Lokio/f;->J()I

    move-result v2

    if-ge v0, v2, :cond_33

    .line 2
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 3
    invoke-static {}, Lpa/k;->f()Lpa/k;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lpa/k;->d(Lokio/f;Lokio/d;)V

    .line 4
    invoke-virtual {v0}, Lokio/c;->m()Lokio/f;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lokio/f;->J()I

    move-result v0

    const/16 v2, 0x80

    invoke-virtual {p0, v0, v1, v2}, Lpa/d$b;->h(III)V

    .line 6
    iget-object v0, p0, Lpa/d$b;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->w(Lokio/f;)Lokio/c;

    goto :goto_40

    .line 7
    :cond_33
    invoke-virtual {p1}, Lokio/f;->J()I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lpa/d$b;->h(III)V

    .line 8
    iget-object v0, p0, Lpa/d$b;->a:Lokio/c;

    invoke-virtual {v0, p1}, Lokio/c;->w(Lokio/f;)Lokio/c;

    :goto_40
    return-void
.end method

.method g(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lpa/c;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lpa/d$b;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 2
    iget v0, p0, Lpa/d$b;->c:I

    iget v2, p0, Lpa/d$b;->f:I

    const/16 v3, 0x20

    const/16 v4, 0x1f

    if-ge v0, v2, :cond_12

    .line 3
    invoke-virtual {p0, v0, v4, v3}, Lpa/d$b;->h(III)V

    .line 4
    :cond_12
    iput-boolean v1, p0, Lpa/d$b;->d:Z

    const v0, 0x7fffffff

    .line 5
    iput v0, p0, Lpa/d$b;->c:I

    .line 6
    iget v0, p0, Lpa/d$b;->f:I

    invoke-virtual {p0, v0, v4, v3}, Lpa/d$b;->h(III)V

    .line 7
    :cond_1e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_23
    if-ge v2, v0, :cond_eb

    .line 8
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpa/c;

    .line 9
    iget-object v4, v3, Lpa/c;->a:Lokio/f;

    invoke-virtual {v4}, Lokio/f;->M()Lokio/f;

    move-result-object v4

    .line 10
    iget-object v5, v3, Lpa/c;->b:Lokio/f;

    .line 11
    sget-object v6, Lpa/d;->b:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, -0x1

    const/4 v8, 0x1

    if-eqz v6, :cond_6d

    .line 12
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v8

    if-le v6, v8, :cond_6a

    const/16 v9, 0x8

    if-ge v6, v9, :cond_6a

    .line 13
    sget-object v9, Lpa/d;->a:[Lpa/c;

    add-int/lit8 v10, v6, -0x1

    aget-object v10, v9, v10

    iget-object v10, v10, Lpa/c;->b:Lokio/f;

    invoke-static {v10, v5}, Lka/c;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5a

    move v9, v6

    goto :goto_6f

    .line 14
    :cond_5a
    aget-object v9, v9, v6

    iget-object v9, v9, Lpa/c;->b:Lokio/f;

    invoke-static {v9, v5}, Lka/c;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6a

    add-int/lit8 v9, v6, 0x1

    move v12, v9

    move v9, v6

    move v6, v12

    goto :goto_6f

    :cond_6a
    move v9, v6

    const/4 v6, -0x1

    goto :goto_6f

    :cond_6d
    const/4 v6, -0x1

    const/4 v9, -0x1

    :goto_6f
    if-ne v6, v7, :cond_a6

    .line 15
    iget v10, p0, Lpa/d$b;->h:I

    add-int/2addr v10, v8

    iget-object v8, p0, Lpa/d$b;->g:[Lpa/c;

    array-length v8, v8

    :goto_77
    if-ge v10, v8, :cond_a6

    .line 16
    iget-object v11, p0, Lpa/d$b;->g:[Lpa/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lpa/c;->a:Lokio/f;

    invoke-static {v11, v4}, Lka/c;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    .line 17
    iget-object v11, p0, Lpa/d$b;->g:[Lpa/c;

    aget-object v11, v11, v10

    iget-object v11, v11, Lpa/c;->b:Lokio/f;

    invoke-static {v11, v5}, Lka/c;->q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_99

    .line 18
    iget v6, p0, Lpa/d$b;->h:I

    sub-int/2addr v10, v6

    sget-object v6, Lpa/d;->a:[Lpa/c;

    array-length v6, v6

    add-int/2addr v6, v10

    goto :goto_a6

    :cond_99
    if-ne v9, v7, :cond_a3

    .line 19
    iget v9, p0, Lpa/d$b;->h:I

    sub-int v9, v10, v9

    sget-object v11, Lpa/d;->a:[Lpa/c;

    array-length v11, v11

    add-int/2addr v9, v11

    :cond_a3
    add-int/lit8 v10, v10, 0x1

    goto :goto_77

    :cond_a6
    :goto_a6
    if-eq v6, v7, :cond_b0

    const/16 v3, 0x7f

    const/16 v4, 0x80

    .line 20
    invoke-virtual {p0, v6, v3, v4}, Lpa/d$b;->h(III)V

    goto :goto_e7

    :cond_b0
    const/16 v6, 0x40

    if-ne v9, v7, :cond_c3

    .line 21
    iget-object v7, p0, Lpa/d$b;->a:Lokio/c;

    invoke-virtual {v7, v6}, Lokio/c;->z(I)Lokio/c;

    .line 22
    invoke-virtual {p0, v4}, Lpa/d$b;->f(Lokio/f;)V

    .line 23
    invoke-virtual {p0, v5}, Lpa/d$b;->f(Lokio/f;)V

    .line 24
    invoke-direct {p0, v3}, Lpa/d$b;->d(Lpa/c;)V

    goto :goto_e7

    .line 25
    :cond_c3
    sget-object v7, Lpa/c;->d:Lokio/f;

    invoke-virtual {v4, v7}, Lokio/f;->K(Lokio/f;)Z

    move-result v7

    if-eqz v7, :cond_dc

    sget-object v7, Lpa/c;->i:Lokio/f;

    invoke-virtual {v7, v4}, Lokio/f;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_dc

    const/16 v3, 0xf

    .line 26
    invoke-virtual {p0, v9, v3, v1}, Lpa/d$b;->h(III)V

    .line 27
    invoke-virtual {p0, v5}, Lpa/d$b;->f(Lokio/f;)V

    goto :goto_e7

    :cond_dc
    const/16 v4, 0x3f

    .line 28
    invoke-virtual {p0, v9, v4, v6}, Lpa/d$b;->h(III)V

    .line 29
    invoke-virtual {p0, v5}, Lpa/d$b;->f(Lokio/f;)V

    .line 30
    invoke-direct {p0, v3}, Lpa/d$b;->d(Lpa/c;)V

    :goto_e7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_23

    :cond_eb
    return-void
.end method

.method h(III)V
    .registers 5

    if-ge p1, p2, :cond_9

    .line 1
    iget-object p2, p0, Lpa/d$b;->a:Lokio/c;

    or-int/2addr p1, p3

    invoke-virtual {p2, p1}, Lokio/c;->z(I)Lokio/c;

    return-void

    .line 2
    :cond_9
    iget-object v0, p0, Lpa/d$b;->a:Lokio/c;

    or-int/2addr p3, p2

    invoke-virtual {v0, p3}, Lokio/c;->z(I)Lokio/c;

    sub-int/2addr p1, p2

    :goto_10
    const/16 p2, 0x80

    if-lt p1, p2, :cond_1f

    and-int/lit8 p3, p1, 0x7f

    .line 3
    iget-object v0, p0, Lpa/d$b;->a:Lokio/c;

    or-int/2addr p2, p3

    invoke-virtual {v0, p2}, Lokio/c;->z(I)Lokio/c;

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_10

    .line 4
    :cond_1f
    iget-object p2, p0, Lpa/d$b;->a:Lokio/c;

    invoke-virtual {p2, p1}, Lokio/c;->z(I)Lokio/c;

    return-void
.end method
