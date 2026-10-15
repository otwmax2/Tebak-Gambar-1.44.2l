###### Class b2.k (b2.k)
.class Lb2/k;
.super Ljava/lang/Object;
.source "OriginalKey.java"

# interfaces
.implements Lz1/c;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lz1/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lz1/c;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb2/k;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lb2/k;->b:Lz1/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/MessageDigest;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/k;->a:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 2
    iget-object v0, p0, Lb2/k;->b:Lz1/c;

    invoke-interface {v0, p1}, Lz1/c;->a(Ljava/security/MessageDigest;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2b

    .line 2
    :cond_12
    check-cast p1, Lb2/k;

    .line 3
    iget-object v2, p0, Lb2/k;->a:Ljava/lang/String;

    iget-object v3, p1, Lb2/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    return v1

    .line 4
    :cond_1f
    iget-object v2, p0, Lb2/k;->b:Lz1/c;

    iget-object p1, p1, Lb2/k;->b:Lz1/c;

    invoke-interface {v2, p1}, Lz1/c;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    return v1

    :cond_2a
    return v0

    :cond_2b
    :goto_2b
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-object v0, p0, Lb2/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Lb2/k;->b:Lz1/c;

    invoke-interface {v1}, Lz1/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
