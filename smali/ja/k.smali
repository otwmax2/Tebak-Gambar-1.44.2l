###### Class ja.k (ja.k)
.class public final Lja/k;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/k$a;
    }
.end annotation


# static fields
.field private static final e:[Lja/h;

.field private static final f:[Lja/h;

.field public static final g:Lja/k;

.field public static final h:Lja/k;

.field public static final i:Lja/k;

.field public static final j:Lja/k;


# instance fields
.field final a:Z

.field final b:Z

.field final c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final d:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 24

    const/16 v0, 0xb

    new-array v1, v0, [Lja/h;

    .line 1
    sget-object v2, Lja/h;->n1:Lja/h;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v4, Lja/h;->o1:Lja/h;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    sget-object v6, Lja/h;->p1:Lja/h;

    const/4 v7, 0x2

    aput-object v6, v1, v7

    sget-object v8, Lja/h;->q1:Lja/h;

    const/4 v9, 0x3

    aput-object v8, v1, v9

    sget-object v10, Lja/h;->r1:Lja/h;

    const/4 v11, 0x4

    aput-object v10, v1, v11

    sget-object v12, Lja/h;->Z0:Lja/h;

    const/4 v13, 0x5

    aput-object v12, v1, v13

    sget-object v14, Lja/h;->d1:Lja/h;

    const/4 v15, 0x6

    aput-object v14, v1, v15

    sget-object v16, Lja/h;->a1:Lja/h;

    const/16 v17, 0x7

    aput-object v16, v1, v17

    sget-object v18, Lja/h;->e1:Lja/h;

    const/16 v19, 0x8

    aput-object v18, v1, v19

    sget-object v20, Lja/h;->k1:Lja/h;

    const/16 v21, 0x9

    aput-object v20, v1, v21

    sget-object v22, Lja/h;->j1:Lja/h;

    const/16 v23, 0xa

    aput-object v22, v1, v23

    sput-object v1, Lja/k;->e:[Lja/h;

    const/16 v0, 0x12

    new-array v0, v0, [Lja/h;

    aput-object v2, v0, v3

    aput-object v4, v0, v5

    aput-object v6, v0, v7

    aput-object v8, v0, v9

    aput-object v10, v0, v11

    aput-object v12, v0, v13

    aput-object v14, v0, v15

    aput-object v16, v0, v17

    aput-object v18, v0, v19

    aput-object v20, v0, v21

    aput-object v22, v0, v23

    .line 2
    sget-object v2, Lja/h;->K0:Lja/h;

    const/16 v4, 0xb

    aput-object v2, v0, v4

    sget-object v2, Lja/h;->L0:Lja/h;

    const/16 v4, 0xc

    aput-object v2, v0, v4

    sget-object v2, Lja/h;->i0:Lja/h;

    const/16 v4, 0xd

    aput-object v2, v0, v4

    sget-object v2, Lja/h;->j0:Lja/h;

    const/16 v4, 0xe

    aput-object v2, v0, v4

    sget-object v2, Lja/h;->G:Lja/h;

    const/16 v4, 0xf

    aput-object v2, v0, v4

    sget-object v2, Lja/h;->K:Lja/h;

    const/16 v4, 0x10

    aput-object v2, v0, v4

    sget-object v2, Lja/h;->k:Lja/h;

    const/16 v4, 0x11

    aput-object v2, v0, v4

    sput-object v0, Lja/k;->f:[Lja/h;

    .line 3
    new-instance v2, Lja/k$a;

    invoke-direct {v2, v5}, Lja/k$a;-><init>(Z)V

    .line 4
    invoke-virtual {v2, v1}, Lja/k$a;->b([Lja/h;)Lja/k$a;

    move-result-object v1

    new-array v2, v7, [Lja/f0;

    sget-object v4, Lja/f0;->p:Lja/f0;

    aput-object v4, v2, v3

    sget-object v6, Lja/f0;->q:Lja/f0;

    aput-object v6, v2, v5

    .line 5
    invoke-virtual {v1, v2}, Lja/k$a;->e([Lja/f0;)Lja/k$a;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v5}, Lja/k$a;->d(Z)Lja/k$a;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lja/k$a;->a()Lja/k;

    move-result-object v1

    sput-object v1, Lja/k;->g:Lja/k;

    .line 8
    new-instance v1, Lja/k$a;

    invoke-direct {v1, v5}, Lja/k$a;-><init>(Z)V

    .line 9
    invoke-virtual {v1, v0}, Lja/k$a;->b([Lja/h;)Lja/k$a;

    move-result-object v1

    new-array v2, v11, [Lja/f0;

    aput-object v4, v2, v3

    aput-object v6, v2, v5

    sget-object v4, Lja/f0;->r:Lja/f0;

    aput-object v4, v2, v7

    sget-object v4, Lja/f0;->s:Lja/f0;

    aput-object v4, v2, v9

    .line 10
    invoke-virtual {v1, v2}, Lja/k$a;->e([Lja/f0;)Lja/k$a;

    move-result-object v1

    .line 11
    invoke-virtual {v1, v5}, Lja/k$a;->d(Z)Lja/k$a;

    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lja/k$a;->a()Lja/k;

    move-result-object v1

    sput-object v1, Lja/k;->h:Lja/k;

    .line 13
    new-instance v1, Lja/k$a;

    invoke-direct {v1, v5}, Lja/k$a;-><init>(Z)V

    .line 14
    invoke-virtual {v1, v0}, Lja/k$a;->b([Lja/h;)Lja/k$a;

    move-result-object v0

    new-array v1, v5, [Lja/f0;

    aput-object v4, v1, v3

    .line 15
    invoke-virtual {v0, v1}, Lja/k$a;->e([Lja/f0;)Lja/k$a;

    move-result-object v0

    .line 16
    invoke-virtual {v0, v5}, Lja/k$a;->d(Z)Lja/k$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lja/k$a;->a()Lja/k;

    move-result-object v0

    sput-object v0, Lja/k;->i:Lja/k;

    .line 18
    new-instance v0, Lja/k$a;

    invoke-direct {v0, v3}, Lja/k$a;-><init>(Z)V

    invoke-virtual {v0}, Lja/k$a;->a()Lja/k;

    move-result-object v0

    sput-object v0, Lja/k;->j:Lja/k;

    return-void
.end method

.method constructor <init>(Lja/k$a;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lja/k$a;->a:Z

    iput-boolean v0, p0, Lja/k;->a:Z

    .line 3
    iget-object v0, p1, Lja/k$a;->b:[Ljava/lang/String;

    iput-object v0, p0, Lja/k;->c:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lja/k$a;->c:[Ljava/lang/String;

    iput-object v0, p0, Lja/k;->d:[Ljava/lang/String;

    .line 5
    iget-boolean p1, p1, Lja/k$a;->d:Z

    iput-boolean p1, p0, Lja/k;->b:Z

    return-void
.end method

.method private e(Ljavax/net/ssl/SSLSocket;Z)Lja/k;
    .registers 7

    .line 1
    iget-object v0, p0, Lja/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 2
    sget-object v0, Lja/h;->b:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lja/k;->c:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lka/c;->z(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    .line 3
    :cond_11
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    .line 4
    :goto_15
    iget-object v1, p0, Lja/k;->d:[Ljava/lang/String;

    if-eqz v1, :cond_26

    .line 5
    sget-object v1, Lka/c;->q:Ljava/util/Comparator;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lja/k;->d:[Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lka/c;->z(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    .line 6
    :cond_26
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    .line 7
    :goto_2a
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object v2, Lja/h;->b:Ljava/util/Comparator;

    const-string v3, "TLS_FALLBACK_SCSV"

    invoke-static {v2, p1, v3}, Lka/c;->w(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz p2, :cond_41

    const/4 p2, -0x1

    if-eq v2, p2, :cond_41

    .line 9
    aget-object p1, p1, v2

    invoke-static {v0, p1}, Lka/c;->i([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_41
    new-instance p1, Lja/k$a;

    invoke-direct {p1, p0}, Lja/k$a;-><init>(Lja/k;)V

    .line 11
    invoke-virtual {p1, v0}, Lja/k$a;->c([Ljava/lang/String;)Lja/k$a;

    move-result-object p1

    .line 12
    invoke-virtual {p1, v1}, Lja/k$a;->f([Ljava/lang/String;)Lja/k$a;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lja/k$a;->a()Lja/k;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method a(Ljavax/net/ssl/SSLSocket;Z)V
    .registers 4

    .line 1
    invoke-direct {p0, p1, p2}, Lja/k;->e(Ljavax/net/ssl/SSLSocket;Z)Lja/k;

    move-result-object p2

    .line 2
    iget-object v0, p2, Lja/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 3
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 4
    :cond_b
    iget-object p2, p2, Lja/k;->c:[Ljava/lang/String;

    if-eqz p2, :cond_12

    .line 5
    invoke-virtual {p1, p2}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja/h;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lja/h;->b([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public c(Ljavax/net/ssl/SSLSocket;)Z
    .registers 6

    .line 1
    iget-boolean v0, p0, Lja/k;->a:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 2
    :cond_6
    iget-object v0, p0, Lja/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_17

    sget-object v2, Lka/c;->q:Ljava/util/Comparator;

    .line 3
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v2, v0, v3}, Lka/c;->B(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    return v1

    .line 5
    :cond_17
    iget-object v0, p0, Lja/k;->c:[Ljava/lang/String;

    if-eqz v0, :cond_28

    sget-object v2, Lja/h;->b:Ljava/util/Comparator;

    .line 6
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {v2, v0, p1}, Lka/c;->B(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_28

    return v1

    :cond_28
    const/4 p1, 0x1

    return p1
.end method

.method public d()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/k;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lja/k;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p1, p0, :cond_a

    return v0

    .line 2
    :cond_a
    check-cast p1, Lja/k;

    .line 3
    iget-boolean v2, p0, Lja/k;->a:Z

    iget-boolean v3, p1, Lja/k;->a:Z

    if-eq v2, v3, :cond_13

    return v1

    :cond_13
    if-eqz v2, :cond_32

    .line 4
    iget-object v2, p0, Lja/k;->c:[Ljava/lang/String;

    iget-object v3, p1, Lja/k;->c:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 5
    :cond_20
    iget-object v2, p0, Lja/k;->d:[Ljava/lang/String;

    iget-object v3, p1, Lja/k;->d:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    return v1

    .line 6
    :cond_2b
    iget-boolean v2, p0, Lja/k;->b:Z

    iget-boolean p1, p1, Lja/k;->b:Z

    if-eq v2, p1, :cond_32

    return v1

    :cond_32
    return v0
.end method

.method public f()Z
    .registers 2

    .line 1
    iget-boolean v0, p0, Lja/k;->b:Z

    return v0
.end method

.method public g()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lja/f0;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lja/k;->d:[Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lja/f0;->e([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 1
    iget-boolean v0, p0, Lja/k;->a:Z

    if-eqz v0, :cond_1e

    const/16 v0, 0x20f

    .line 2
    iget-object v1, p0, Lja/k;->c:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Lja/k;->d:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-boolean v1, p0, Lja/k;->b:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    goto :goto_20

    :cond_1e
    const/16 v0, 0x11

    :goto_20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lja/k;->a:Z

    if-nez v0, :cond_7

    const-string v0, "ConnectionSpec()"

    return-object v0

    .line 2
    :cond_7
    iget-object v0, p0, Lja/k;->c:[Ljava/lang/String;

    const-string v1, "[all enabled]"

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lja/k;->b()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_16
    move-object v0, v1

    .line 3
    :goto_17
    iget-object v2, p0, Lja/k;->d:[Ljava/lang/String;

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lja/k;->g()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ConnectionSpec(cipherSuites="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", tlsVersions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", supportsTlsExtensions="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lja/k;->b:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class ja.k.a (ja.k$a)
.class public final Lja/k$a;
.super Ljava/lang/Object;
.source "ConnectionSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field c:[Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lja/k;)V
    .registers 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-boolean v0, p1, Lja/k;->a:Z

    iput-boolean v0, p0, Lja/k$a;->a:Z

    .line 5
    iget-object v0, p1, Lja/k;->c:[Ljava/lang/String;

    iput-object v0, p0, Lja/k$a;->b:[Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lja/k;->d:[Ljava/lang/String;

    iput-object v0, p0, Lja/k$a;->c:[Ljava/lang/String;

    .line 7
    iget-boolean p1, p1, Lja/k;->b:Z

    iput-boolean p1, p0, Lja/k$a;->d:Z

    return-void
.end method

.method constructor <init>(Z)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lja/k$a;->a:Z

    return-void
.end method


# virtual methods
.method public a()Lja/k;
    .registers 2

    .line 1
    new-instance v0, Lja/k;

    invoke-direct {v0, p0}, Lja/k;-><init>(Lja/k$a;)V

    return-object v0
.end method

.method public varargs b([Lja/h;)Lja/k$a;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lja/k$a;->a:Z

    if-eqz v0, :cond_19

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 4
    aget-object v2, p1, v1

    iget-object v2, v2, Lja/h;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5
    :cond_14
    invoke-virtual {p0, v0}, Lja/k$a;->c([Ljava/lang/String;)Lja/k$a;

    move-result-object p1

    return-object p1

    .line 6
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method public varargs c([Ljava/lang/String;)Lja/k$a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lja/k$a;->a:Z

    if-eqz v0, :cond_18

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lja/k$a;->b:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one cipher suite is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no cipher suites for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Z)Lja/k$a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lja/k$a;->a:Z

    if-eqz v0, :cond_7

    .line 2
    iput-boolean p1, p0, Lja/k$a;->d:Z

    return-object p0

    .line 3
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS extensions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs e([Lja/f0;)Lja/k$a;
    .registers 5

    .line 1
    iget-boolean v0, p0, Lja/k$a;->a:Z

    if-eqz v0, :cond_19

    .line 2
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_14

    .line 4
    aget-object v2, p1, v1

    iget-object v2, v2, Lja/f0;->o:Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5
    :cond_14
    invoke-virtual {p0, v0}, Lja/k$a;->f([Ljava/lang/String;)Lja/k$a;

    move-result-object p1

    return-object p1

    .line 6
    :cond_19
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_22

    :goto_21
    throw p1

    :goto_22
    goto :goto_21
.end method

.method public varargs f([Ljava/lang/String;)Lja/k$a;
    .registers 3

    .line 1
    iget-boolean v0, p0, Lja/k$a;->a:Z

    if-eqz v0, :cond_18

    .line 2
    array-length v0, p1

    if-eqz v0, :cond_10

    .line 3
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lja/k$a;->c:[Ljava/lang/String;

    return-object p0

    .line 4
    :cond_10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "At least one TLS version is required"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_18
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "no TLS versions for cleartext connections"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
