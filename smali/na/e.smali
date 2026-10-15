###### Class na.e (na.e)
.class public final Lna/e;
.super Ljava/lang/Object;
.source "HttpHeaders.java"


# static fields
.field private static final a:Lokio/f;

.field private static final b:Lokio/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "\"\\"

    .line 1
    invoke-static {v0}, Lokio/f;->l(Ljava/lang/String;)Lokio/f;

    move-result-object v0

    sput-object v0, Lna/e;->a:Lokio/f;

    const-string v0, "\t ,="

    .line 2
    invoke-static {v0}, Lokio/f;->l(Ljava/lang/String;)Lokio/f;

    move-result-object v0

    sput-object v0, Lna/e;->b:Lokio/f;

    return-void
.end method

.method public static a(Lja/s;)J
    .registers 3

    const-string v0, "Content-Length"

    .line 1
    invoke-virtual {p0, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lna/e;->h(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static b(Lja/c0;)J
    .registers 3

    .line 1
    invoke-virtual {p0}, Lja/c0;->h()Lja/s;

    move-result-object p0

    invoke-static {p0}, Lna/e;->a(Lja/s;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(Lja/c0;)Z
    .registers 9

    .line 1
    invoke-virtual {p0}, Lja/c0;->n()Lja/a0;

    move-result-object v0

    invoke-virtual {v0}, Lja/a0;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    return v1

    .line 2
    :cond_12
    invoke-virtual {p0}, Lja/c0;->d()I

    move-result v0

    const/16 v2, 0x64

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1f

    const/16 v2, 0xc8

    if-lt v0, v2, :cond_28

    :cond_1f
    const/16 v2, 0xcc

    if-eq v0, v2, :cond_28

    const/16 v2, 0x130

    if-eq v0, v2, :cond_28

    return v3

    .line 3
    :cond_28
    invoke-static {p0}, Lna/e;->b(Lja/c0;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_42

    const-string v0, "Transfer-Encoding"

    .line 4
    invoke-virtual {p0, v0}, Lja/c0;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_41

    goto :goto_42

    :cond_41
    return v1

    :cond_42
    :goto_42
    return v3
.end method

.method public static d(Ljava/lang/String;I)I
    .registers 5

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_4} :catch_18

    const-wide/32 v0, 0x7fffffff

    cmp-long v2, p0, v0

    if-lez v2, :cond_f

    const p0, 0x7fffffff

    return p0

    :cond_f
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gez v2, :cond_17

    const/4 p0, 0x0

    return p0

    :cond_17
    long-to-int p1, p0

    :catch_18
    return p1
.end method

.method public static e(Lja/m;Lja/t;Lja/s;)V
    .registers 4

    .line 1
    sget-object v0, Lja/m;->a:Lja/m;

    if-ne p0, v0, :cond_5

    return-void

    .line 2
    :cond_5
    invoke-static {p1, p2}, Lja/l;->f(Lja/t;Lja/s;)Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    .line 4
    :cond_10
    invoke-interface {p0, p1, p2}, Lja/m;->b(Lja/t;Ljava/util/List;)V

    return-void
.end method

.method public static f(Ljava/lang/String;ILjava/lang/String;)I
    .registers 5

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_15

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_15
    :goto_15
    return p1
.end method

.method public static g(Ljava/lang/String;I)I
    .registers 4

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_16

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_13

    const/16 v1, 0x9

    if-eq v0, v1, :cond_13

    goto :goto_16

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_16
    :goto_16
    return p1
.end method

.method private static h(Ljava/lang/String;)J
    .registers 3

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    .line 1
    :cond_5
    :try_start_5
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_9} :catch_9

    :catch_9
    return-wide v0
.end method
