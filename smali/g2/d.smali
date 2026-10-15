###### Class g2.d (g2.d)
.class public Lg2/d;
.super Ljava/lang/Object;
.source "GlideUrl.java"


# instance fields
.field private final a:Ljava/net/URL;

.field private final b:Lg2/e;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 2
    sget-object v0, Lg2/e;->b:Lg2/e;

    invoke-direct {p0, p1, v0}, Lg2/d;-><init>(Ljava/lang/String;Lg2/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lg2/e;)V
    .registers 5

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    if-eqz p2, :cond_13

    .line 11
    iput-object p1, p0, Lg2/d;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lg2/d;->a:Ljava/net/URL;

    .line 13
    iput-object p2, p0, Lg2/d;->b:Lg2/e;

    return-void

    .line 14
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Headers must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1b
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "String url must not be empty or null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .registers 3

    .line 1
    sget-object v0, Lg2/e;->b:Lg2/e;

    invoke-direct {p0, p1, v0}, Lg2/d;-><init>(Ljava/net/URL;Lg2/e;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lg2/e;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_17

    if-eqz p2, :cond_f

    .line 4
    iput-object p1, p0, Lg2/d;->a:Ljava/net/URL;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lg2/d;->c:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lg2/d;->b:Lg2/e;

    return-void

    .line 7
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Headers must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "URL must not be null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c()Ljava/lang/String;
    .registers 3

    .line 1
    iget-object v0, p0, Lg2/d;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2
    iget-object v0, p0, Lg2/d;->c:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 4
    iget-object v0, p0, Lg2/d;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    const-string v1, "@#&=*+-_.,:!?()/~\'%"

    .line 5
    invoke-static {v0, v1}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lg2/d;->d:Ljava/lang/String;

    .line 6
    :cond_1e
    iget-object v0, p0, Lg2/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/net/URL;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg2/d;->e:Ljava/net/URL;

    if-nez v0, :cond_f

    .line 2
    new-instance v0, Ljava/net/URL;

    invoke-direct {p0}, Lg2/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lg2/d;->e:Ljava/net/URL;

    .line 3
    :cond_f
    iget-object v0, p0, Lg2/d;->e:Ljava/net/URL;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lg2/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_b

    :cond_5
    iget-object v0, p0, Lg2/d;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0
.end method

.method public b()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg2/d;->b:Lg2/e;

    invoke-interface {v0}, Lg2/e;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/net/URL;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lg2/d;->d()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1
    instance-of v0, p1, Lg2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 2
    check-cast p1, Lg2/d;

    .line 3
    invoke-virtual {p0}, Lg2/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lg2/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lg2/d;->b:Lg2/e;

    iget-object p1, p1, Lg2/d;->b:Lg2/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    invoke-virtual {p0}, Lg2/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lg2/d;->b:Lg2/e;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lg2/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg2/d;->b:Lg2/e;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
