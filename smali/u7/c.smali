###### Class u7.c (u7.c)
.class public final Lu7/c;
.super Ljava/lang/Object;
.source "Encoder.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x60

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lu7/c;->a:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        0x25
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x28
        -0x1
        0x29
        0x2a
        0x2b
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static a(Ljava/lang/String;Ll7/a;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4} :catch_13

    .line 2
    array-length p2, p0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_12

    aget-byte v1, p0, v0

    const/16 v2, 0x8

    .line 3
    invoke-virtual {p1, v1, v2}, Ll7/a;->d(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_12
    return-void

    :catch_13
    move-exception p0

    .line 4
    new-instance p1, Li7/h;

    invoke-direct {p1, p0}, Li7/h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_1b

    :goto_1a
    throw p1

    :goto_1b
    goto :goto_1a
.end method

.method static b(Ljava/lang/CharSequence;Ll7/a;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_3d

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lu7/c;->p(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_37

    add-int/lit8 v4, v1, 0x1

    if-ge v4, v0, :cond_31

    .line 3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lu7/c;->p(I)I

    move-result v4

    if-eq v4, v3, :cond_2b

    mul-int/lit8 v2, v2, 0x2d

    add-int/2addr v2, v4

    const/16 v3, 0xb

    .line 4
    invoke-virtual {p1, v2, v3}, Ll7/a;->d(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    .line 5
    :cond_2b
    new-instance p0, Li7/h;

    invoke-direct {p0}, Li7/h;-><init>()V

    throw p0

    :cond_31
    const/4 v1, 0x6

    .line 6
    invoke-virtual {p1, v2, v1}, Ll7/a;->d(II)V

    move v1, v4

    goto :goto_5

    .line 7
    :cond_37
    new-instance p0, Li7/h;

    invoke-direct {p0}, Li7/h;-><init>()V

    throw p0

    :cond_3d
    return-void
.end method

.method static c(Ljava/lang/String;Lt7/b;Ll7/a;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    .line 1
    sget-object v0, Lu7/c$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    const/4 p3, 0x4

    if-ne v0, p3, :cond_18

    .line 2
    invoke-static {p0, p2}, Lu7/c;->e(Ljava/lang/String;Ll7/a;)V

    return-void

    .line 3
    :cond_18
    new-instance p0, Li7/h;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid mode: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4
    :cond_28
    invoke-static {p0, p2, p3}, Lu7/c;->a(Ljava/lang/String;Ll7/a;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2c
    invoke-static {p0, p2}, Lu7/c;->b(Ljava/lang/CharSequence;Ll7/a;)V

    return-void

    .line 6
    :cond_30
    invoke-static {p0, p2}, Lu7/c;->h(Ljava/lang/CharSequence;Ll7/a;)V

    return-void
.end method

.method private static d(Ll7/c;Ll7/a;)V
    .registers 4

    .line 1
    sget-object v0, Lt7/b;->v:Lt7/b;

    invoke-virtual {v0}, Lt7/b;->c()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ll7/a;->d(II)V

    .line 2
    invoke-virtual {p0}, Ll7/c;->e()I

    move-result p0

    const/16 v0, 0x8

    invoke-virtual {p1, p0, v0}, Ll7/a;->d(II)V

    return-void
.end method

.method static e(Ljava/lang/String;Ll7/a;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    :try_start_0
    const-string v0, "Shift_JIS"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_6} :catch_4d

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_4c

    .line 3
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v1, 0x1

    .line 4
    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    const v3, 0x8140

    const/4 v4, -0x1

    if-lt v2, v3, :cond_24

    const v5, 0x9ffc

    if-gt v2, v5, :cond_24

    :goto_22
    sub-int/2addr v2, v3

    goto :goto_33

    :cond_24
    const v3, 0xe040

    if-lt v2, v3, :cond_32

    const v3, 0xebbf

    if-gt v2, v3, :cond_32

    const v3, 0xc140

    goto :goto_22

    :cond_32
    const/4 v2, -0x1

    :goto_33
    if-eq v2, v4, :cond_44

    shr-int/lit8 v3, v2, 0x8

    mul-int/lit16 v3, v3, 0xc0

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    const/16 v2, 0xd

    .line 5
    invoke-virtual {p1, v3, v2}, Ll7/a;->d(II)V

    add-int/lit8 v1, v1, 0x2

    goto :goto_8

    .line 6
    :cond_44
    new-instance p0, Li7/h;

    const-string p1, "Invalid byte sequence"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4c
    return-void

    :catch_4d
    move-exception p0

    .line 7
    new-instance p1, Li7/h;

    invoke-direct {p1, p0}, Li7/h;-><init>(Ljava/lang/Throwable;)V

    goto :goto_55

    :goto_54
    throw p1

    :goto_55
    goto :goto_54
.end method

.method static f(ILt7/c;Lt7/b;Ll7/a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Lt7/b;->e(Lt7/c;)I

    move-result p1

    const/4 p2, 0x1

    shl-int v0, p2, p1

    if-ge p0, v0, :cond_d

    .line 2
    invoke-virtual {p3, p0, p1}, Ll7/a;->d(II)V

    return-void

    .line 3
    :cond_d
    new-instance p1, Li7/h;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is bigger than "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-int/2addr v0, p2

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static g(Lt7/b;Ll7/a;)V
    .registers 3

    .line 1
    invoke-virtual {p0}, Lt7/b;->c()I

    move-result p0

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Ll7/a;->d(II)V

    return-void
.end method

.method static h(Ljava/lang/CharSequence;Ll7/a;)V
    .registers 8

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_45

    .line 2
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    add-int/lit8 v3, v1, 0x2

    if-ge v3, v0, :cond_2d

    add-int/lit8 v4, v1, 0x1

    .line 3
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int/lit8 v4, v4, -0x30

    .line 4
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    mul-int/lit8 v2, v2, 0x64

    const/16 v5, 0xa

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v2, v4

    add-int/2addr v2, v3

    .line 5
    invoke-virtual {p1, v2, v5}, Ll7/a;->d(II)V

    add-int/lit8 v1, v1, 0x3

    goto :goto_5

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_40

    .line 6
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v1

    const/4 v1, 0x7

    .line 7
    invoke-virtual {p1, v2, v1}, Ll7/a;->d(II)V

    move v1, v3

    goto :goto_5

    :cond_40
    const/4 v3, 0x4

    .line 8
    invoke-virtual {p1, v2, v3}, Ll7/a;->d(II)V

    goto :goto_5

    :cond_45
    return-void
.end method

.method private static i(Lt7/b;Ll7/a;Ll7/a;Lt7/c;)I
    .registers 4

    .line 1
    invoke-virtual {p1}, Ll7/a;->i()I

    move-result p1

    invoke-virtual {p0, p3}, Lt7/b;->e(Lt7/c;)I

    move-result p0

    add-int/2addr p1, p0

    invoke-virtual {p2}, Ll7/a;->i()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static j(Lu7/b;)I
    .registers 3

    .line 1
    invoke-static {p0}, Lu7/d;->a(Lu7/b;)I

    move-result v0

    .line 2
    invoke-static {p0}, Lu7/d;->c(Lu7/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3
    invoke-static {p0}, Lu7/d;->d(Lu7/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4
    invoke-static {p0}, Lu7/d;->e(Lu7/b;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static k(Ll7/a;Lt7/a;Lt7/c;Lu7/b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    const v0, 0x7fffffff

    const/4 v1, -0x1

    const/4 v2, 0x0

    :goto_5
    const/16 v3, 0x8

    if-ge v2, v3, :cond_17

    .line 1
    invoke-static {p0, p1, p2, v2, p3}, Lu7/e;->a(Ll7/a;Lt7/a;Lt7/c;ILu7/b;)V

    .line 2
    invoke-static {p3}, Lu7/c;->j(Lu7/b;)I

    move-result v3

    if-ge v3, v0, :cond_14

    move v1, v2

    move v0, v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_17
    return v1
.end method

.method private static l(Ljava/lang/String;Ljava/lang/String;)Lt7/b;
    .registers 7

    const-string v0, "Shift_JIS"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    invoke-static {p0}, Lu7/c;->s(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 2
    sget-object p0, Lt7/b;->w:Lt7/b;

    return-object p0

    :cond_11
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p1, v2, :cond_37

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    const/4 v4, 0x1

    if-lt v2, v3, :cond_29

    const/16 v3, 0x39

    if-gt v2, v3, :cond_29

    const/4 v1, 0x1

    goto :goto_31

    .line 5
    :cond_29
    invoke-static {v2}, Lu7/c;->p(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_34

    const/4 v0, 0x1

    :goto_31
    add-int/lit8 p1, p1, 0x1

    goto :goto_14

    .line 6
    :cond_34
    sget-object p0, Lt7/b;->u:Lt7/b;

    return-object p0

    :cond_37
    if-eqz v0, :cond_3c

    .line 7
    sget-object p0, Lt7/b;->s:Lt7/b;

    return-object p0

    :cond_3c
    if-eqz v1, :cond_41

    .line 8
    sget-object p0, Lt7/b;->r:Lt7/b;

    return-object p0

    .line 9
    :cond_41
    sget-object p0, Lt7/b;->u:Lt7/b;

    return-object p0
.end method

.method private static m(ILt7/a;)Lt7/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    const/4 v0, 0x1

    :goto_1
    const/16 v1, 0x28

    if-gt v0, v1, :cond_13

    .line 1
    invoke-static {v0}, Lt7/c;->e(I)Lt7/c;

    move-result-object v1

    .line 2
    invoke-static {p0, v1, p1}, Lu7/c;->v(ILt7/c;Lt7/a;)Z

    move-result v2

    if-eqz v2, :cond_10

    return-object v1

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3
    :cond_13
    new-instance p0, Li7/h;

    const-string p1, "Data too big"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    goto :goto_1c

    :goto_1b
    throw p0

    :goto_1c
    goto :goto_1b
.end method

.method public static n(Ljava/lang/String;Lt7/a;Ljava/util/Map;)Lu7/f;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lt7/a;",
            "Ljava/util/Map<",
            "Li7/c;",
            "*>;)",
            "Lu7/f;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_e

    .line 1
    sget-object v2, Li7/c;->p:Li7/c;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_1c

    .line 2
    sget-object v3, Li7/c;->p:Li7/c;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_1c
    const-string v3, "ISO-8859-1"

    .line 3
    :goto_1e
    invoke-static {p0, v3}, Lu7/c;->l(Ljava/lang/String;Ljava/lang/String;)Lt7/b;

    move-result-object v4

    .line 4
    new-instance v5, Ll7/a;

    invoke-direct {v5}, Ll7/a;-><init>()V

    .line 5
    sget-object v6, Lt7/b;->u:Lt7/b;

    if-ne v4, v6, :cond_36

    if-eqz v2, :cond_36

    .line 6
    invoke-static {v3}, Ll7/c;->c(Ljava/lang/String;)Ll7/c;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 7
    invoke-static {v2, v5}, Lu7/c;->d(Ll7/c;Ll7/a;)V

    :cond_36
    if-eqz p2, :cond_41

    .line 8
    sget-object v2, Li7/c;->z:Li7/c;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    goto :goto_42

    :cond_41
    const/4 v0, 0x0

    :goto_42
    if-eqz v0, :cond_5d

    .line 9
    sget-object v0, Li7/c;->z:Li7/c;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 10
    sget-object v0, Lt7/b;->x:Lt7/b;

    invoke-static {v0, v5}, Lu7/c;->g(Lt7/b;Ll7/a;)V

    .line 11
    :cond_5d
    invoke-static {v4, v5}, Lu7/c;->g(Lt7/b;Ll7/a;)V

    .line 12
    new-instance v0, Ll7/a;

    invoke-direct {v0}, Ll7/a;-><init>()V

    .line 13
    invoke-static {p0, v4, v0, v3}, Lu7/c;->c(Ljava/lang/String;Lt7/b;Ll7/a;Ljava/lang/String;)V

    if-eqz p2, :cond_95

    .line 14
    sget-object v1, Li7/c;->y:Li7/c;

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_95

    .line 15
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 16
    invoke-static {p2}, Lt7/c;->e(I)Lt7/c;

    move-result-object p2

    .line 17
    invoke-static {v4, v5, v0, p2}, Lu7/c;->i(Lt7/b;Ll7/a;Ll7/a;Lt7/c;)I

    move-result v1

    .line 18
    invoke-static {v1, p2, p1}, Lu7/c;->v(ILt7/c;Lt7/a;)Z

    move-result v1

    if-eqz v1, :cond_8d

    goto :goto_99

    .line 19
    :cond_8d
    new-instance p0, Li7/h;

    const-string p1, "Data too big for requested version"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_95
    invoke-static {p1, v4, v5, v0}, Lu7/c;->t(Lt7/a;Lt7/b;Ll7/a;Ll7/a;)Lt7/c;

    move-result-object p2

    .line 21
    :goto_99
    new-instance v1, Ll7/a;

    invoke-direct {v1}, Ll7/a;-><init>()V

    .line 22
    invoke-virtual {v1, v5}, Ll7/a;->b(Ll7/a;)V

    if-ne v4, v6, :cond_a8

    .line 23
    invoke-virtual {v0}, Ll7/a;->j()I

    move-result p0

    goto :goto_ac

    :cond_a8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 24
    :goto_ac
    invoke-static {p0, p2, v4, v1}, Lu7/c;->f(ILt7/c;Lt7/b;Ll7/a;)V

    .line 25
    invoke-virtual {v1, v0}, Ll7/a;->b(Ll7/a;)V

    .line 26
    invoke-virtual {p2, p1}, Lt7/c;->c(Lt7/a;)Lt7/c$b;

    move-result-object p0

    .line 27
    invoke-virtual {p2}, Lt7/c;->d()I

    move-result v0

    invoke-virtual {p0}, Lt7/c$b;->d()I

    move-result v2

    sub-int/2addr v0, v2

    .line 28
    invoke-static {v0, v1}, Lu7/c;->u(ILl7/a;)V

    .line 29
    invoke-virtual {p2}, Lt7/c;->d()I

    move-result v2

    .line 30
    invoke-virtual {p0}, Lt7/c$b;->c()I

    move-result p0

    .line 31
    invoke-static {v1, v2, v0, p0}, Lu7/c;->r(Ll7/a;III)Ll7/a;

    move-result-object p0

    .line 32
    new-instance v0, Lu7/f;

    invoke-direct {v0}, Lu7/f;-><init>()V

    .line 33
    invoke-virtual {v0, p1}, Lu7/f;->c(Lt7/a;)V

    .line 34
    invoke-virtual {v0, v4}, Lu7/f;->f(Lt7/b;)V

    .line 35
    invoke-virtual {v0, p2}, Lu7/f;->g(Lt7/c;)V

    .line 36
    invoke-virtual {p2}, Lt7/c;->b()I

    move-result v1

    .line 37
    new-instance v2, Lu7/b;

    invoke-direct {v2, v1, v1}, Lu7/b;-><init>(II)V

    .line 38
    invoke-static {p0, p1, p2, v2}, Lu7/c;->k(Ll7/a;Lt7/a;Lt7/c;Lu7/b;)I

    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Lu7/f;->d(I)V

    .line 40
    invoke-static {p0, p1, p2, v1, v2}, Lu7/e;->a(Ll7/a;Lt7/a;Lt7/c;ILu7/b;)V

    .line 41
    invoke-virtual {v0, v2}, Lu7/f;->e(Lu7/b;)V

    return-object v0
.end method

.method static o([BI)[B
    .registers 7

    .line 1
    array-length v0, p0

    add-int v1, v0, p1

    .line 2
    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v0, :cond_12

    .line 3
    aget-byte v4, p0, v3

    and-int/lit16 v4, v4, 0xff

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 4
    :cond_12
    new-instance p0, Lm7/c;

    sget-object v3, Lm7/a;->l:Lm7/a;

    invoke-direct {p0, v3}, Lm7/c;-><init>(Lm7/a;)V

    invoke-virtual {p0, v1, p1}, Lm7/c;->b([II)V

    .line 5
    new-array p0, p1, [B

    :goto_1e
    if-ge v2, p1, :cond_2a

    add-int v3, v0, v2

    .line 6
    aget v3, v1, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_2a
    return-object p0
.end method

.method static p(I)I
    .registers 3

    .line 1
    sget-object v0, Lu7/c;->a:[I

    array-length v1, v0

    if-ge p0, v1, :cond_8

    .line 2
    aget p0, v0, p0

    return p0

    :cond_8
    const/4 p0, -0x1

    return p0
.end method

.method static q(IIII[I[I)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    if-ge p3, p2, :cond_45

    .line 1
    rem-int v0, p0, p2

    sub-int v1, p2, v0

    .line 2
    div-int v2, p0, p2

    add-int/lit8 v3, v2, 0x1

    .line 3
    div-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v2, p1

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_3d

    add-int v5, v1, v0

    if-ne p2, v5, :cond_35

    add-int p2, p1, v2

    mul-int p2, p2, v1

    add-int v5, v4, v3

    mul-int v5, v5, v0

    add-int/2addr p2, v5

    if-ne p0, p2, :cond_2d

    const/4 p0, 0x0

    if-ge p3, v1, :cond_28

    .line 4
    aput p1, p4, p0

    .line 5
    aput v2, p5, p0

    return-void

    .line 6
    :cond_28
    aput v4, p4, p0

    .line 7
    aput v3, p5, p0

    return-void

    .line 8
    :cond_2d
    new-instance p0, Li7/h;

    const-string p1, "Total bytes mismatch"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 9
    :cond_35
    new-instance p0, Li7/h;

    const-string p1, "RS blocks mismatch"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_3d
    new-instance p0, Li7/h;

    const-string p1, "EC bytes mismatch"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_45
    new-instance p0, Li7/h;

    const-string p1, "Block ID too large"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static r(Ll7/a;III)Ll7/a;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1
    invoke-virtual/range {p0 .. p0}, Ll7/a;->j()I

    move-result v0

    if-ne v0, v7, :cond_d4

    .line 2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_16
    if-ge v11, v8, :cond_52

    const/4 v0, 0x1

    new-array v15, v0, [I

    new-array v5, v0, [I

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v11

    move-object v4, v15

    move-object/from16 v16, v5

    .line 3
    invoke-static/range {v0 .. v5}, Lu7/c;->q(IIII[I[I)V

    .line 4
    aget v0, v15, v10

    .line 5
    new-array v1, v0, [B

    shl-int/lit8 v2, v12, 0x3

    move-object/from16 v3, p0

    .line 6
    invoke-virtual {v3, v2, v1, v10, v0}, Ll7/a;->l(I[BII)V

    .line 7
    aget v2, v16, v10

    invoke-static {v1, v2}, Lu7/c;->o([BI)[B

    move-result-object v2

    .line 8
    new-instance v4, Lu7/a;

    invoke-direct {v4, v1, v2}, Lu7/a;-><init>([B[B)V

    invoke-interface {v9, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 10
    array-length v0, v2

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 11
    aget v0, v15, v10

    add-int/2addr v12, v0

    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    :cond_52
    if-ne v7, v12, :cond_cc

    .line 12
    new-instance v0, Ll7/a;

    invoke-direct {v0}, Ll7/a;-><init>()V

    const/4 v1, 0x0

    :goto_5a
    const/16 v2, 0x8

    if-ge v1, v13, :cond_7e

    .line 13
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_62
    :goto_62
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu7/a;

    .line 14
    invoke-virtual {v4}, Lu7/a;->a()[B

    move-result-object v4

    .line 15
    array-length v5, v4

    if-ge v1, v5, :cond_62

    .line 16
    aget-byte v4, v4, v1

    invoke-virtual {v0, v4, v2}, Ll7/a;->d(II)V

    goto :goto_62

    :cond_7b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    :cond_7e
    :goto_7e
    if-ge v10, v14, :cond_a0

    .line 17
    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_84
    :goto_84
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lu7/a;

    .line 18
    invoke-virtual {v3}, Lu7/a;->b()[B

    move-result-object v3

    .line 19
    array-length v4, v3

    if-ge v10, v4, :cond_84

    .line 20
    aget-byte v3, v3, v10

    invoke-virtual {v0, v3, v2}, Ll7/a;->d(II)V

    goto :goto_84

    :cond_9d
    add-int/lit8 v10, v10, 0x1

    goto :goto_7e

    .line 21
    :cond_a0
    invoke-virtual {v0}, Ll7/a;->j()I

    move-result v1

    if-ne v6, v1, :cond_a7

    return-object v0

    .line 22
    :cond_a7
    new-instance v1, Li7/h;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interleaving error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ll7/a;->j()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " differ."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Li7/h;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_cc
    new-instance v0, Li7/h;

    const-string v1, "Data bytes does not match offset"

    invoke-direct {v0, v1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_d4
    new-instance v0, Li7/h;

    const-string v1, "Number of bits and data bytes does not match"

    invoke-direct {v0, v1}, Li7/h;-><init>(Ljava/lang/String;)V

    goto :goto_dd

    :goto_dc
    throw v0

    :goto_dd
    goto :goto_dc
.end method

.method private static s(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "Shift_JIS"

    .line 1
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_7} :catch_2b

    .line 2
    array-length v1, p0

    .line 3
    rem-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_29

    .line 4
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x81

    if-lt v3, v4, :cond_1c

    const/16 v4, 0x9f

    if-le v3, v4, :cond_25

    :cond_1c
    const/16 v4, 0xe0

    if-lt v3, v4, :cond_28

    const/16 v4, 0xeb

    if-le v3, v4, :cond_25

    goto :goto_28

    :cond_25
    add-int/lit8 v2, v2, 0x2

    goto :goto_e

    :cond_28
    :goto_28
    return v0

    :cond_29
    const/4 p0, 0x1

    return p0

    :catch_2b
    return v0
.end method

.method private static t(Lt7/a;Lt7/b;Ll7/a;Ll7/a;)Lt7/c;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lt7/c;->e(I)Lt7/c;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lu7/c;->i(Lt7/b;Ll7/a;Ll7/a;Lt7/c;)I

    move-result v0

    .line 2
    invoke-static {v0, p0}, Lu7/c;->m(ILt7/a;)Lt7/c;

    move-result-object v0

    .line 3
    invoke-static {p1, p2, p3, v0}, Lu7/c;->i(Lt7/b;Ll7/a;Ll7/a;Lt7/c;)I

    move-result p1

    .line 4
    invoke-static {p1, p0}, Lu7/c;->m(ILt7/a;)Lt7/c;

    move-result-object p0

    return-object p0
.end method

.method static u(ILl7/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Li7/h;
        }
    .end annotation

    shl-int/lit8 v0, p0, 0x3

    .line 1
    invoke-virtual {p1}, Ll7/a;->i()I

    move-result v1

    if-gt v1, v0, :cond_50

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_a
    const/4 v3, 0x4

    if-ge v2, v3, :cond_19

    .line 2
    invoke-virtual {p1}, Ll7/a;->i()I

    move-result v3

    if-ge v3, v0, :cond_19

    .line 3
    invoke-virtual {p1, v1}, Ll7/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 4
    :cond_19
    invoke-virtual {p1}, Ll7/a;->i()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    const/16 v3, 0x8

    if-lez v2, :cond_2b

    :goto_23
    if-ge v2, v3, :cond_2b

    .line 5
    invoke-virtual {p1, v1}, Ll7/a;->a(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 6
    :cond_2b
    invoke-virtual {p1}, Ll7/a;->j()I

    move-result v2

    sub-int/2addr p0, v2

    :goto_30
    if-ge v1, p0, :cond_41

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_39

    const/16 v2, 0xec

    goto :goto_3b

    :cond_39
    const/16 v2, 0x11

    .line 7
    :goto_3b
    invoke-virtual {p1, v2, v3}, Ll7/a;->d(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 8
    :cond_41
    invoke-virtual {p1}, Ll7/a;->i()I

    move-result p0

    if-ne p0, v0, :cond_48

    return-void

    .line 9
    :cond_48
    new-instance p0, Li7/h;

    const-string p1, "Bits size does not equal capacity"

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_50
    new-instance p0, Li7/h;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "data bits cannot fit in the QR Code"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ll7/a;->i()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Li7/h;-><init>(Ljava/lang/String;)V

    goto :goto_71

    :goto_70
    throw p0

    :goto_71
    goto :goto_70
.end method

.method private static v(ILt7/c;Lt7/a;)Z
    .registers 4

    .line 1
    invoke-virtual {p1}, Lt7/c;->d()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Lt7/c;->c(Lt7/a;)Lt7/c$b;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lt7/c$b;->d()I

    move-result p1

    sub-int/2addr v0, p1

    add-int/lit8 p0, p0, 0x7

    .line 4
    div-int/lit8 p0, p0, 0x8

    if-lt v0, p0, :cond_15

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

###### Class u7.c.a (u7.c$a)
.class synthetic Lu7/c$a;
.super Ljava/lang/Object;
.source "Encoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu7/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lt7/b;->values()[Lt7/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lu7/c$a;->a:[I

    :try_start_9
    sget-object v1, Lt7/b;->r:Lt7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lu7/c$a;->a:[I

    sget-object v1, Lt7/b;->s:Lt7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lu7/c$a;->a:[I

    sget-object v1, Lt7/b;->u:Lt7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lu7/c$a;->a:[I

    sget-object v1, Lt7/b;->w:Lt7/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
