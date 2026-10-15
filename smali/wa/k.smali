###### Class wa.k (wa.k)
.class final Lwa/k;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwa/k$a;
    }
.end annotation


# static fields
.field private static final k:[C


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lja/t;

.field private c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private d:Lja/t$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lja/a0$a;

.field private f:Lja/v;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:Z

.field private h:Lja/w$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private i:Lja/q$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private j:Lja/b0;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_a

    sput-object v0, Lwa/k;->k:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lja/t;Ljava/lang/String;Lja/s;Lja/v;ZZZ)V
    .registers 9
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lja/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lja/v;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/k;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lwa/k;->b:Lja/t;

    .line 4
    iput-object p3, p0, Lwa/k;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lja/a0$a;

    invoke-direct {p1}, Lja/a0$a;-><init>()V

    iput-object p1, p0, Lwa/k;->e:Lja/a0$a;

    .line 6
    iput-object p5, p0, Lwa/k;->f:Lja/v;

    .line 7
    iput-boolean p6, p0, Lwa/k;->g:Z

    if-eqz p4, :cond_19

    .line 8
    invoke-virtual {p1, p4}, Lja/a0$a;->e(Lja/s;)Lja/a0$a;

    :cond_19
    if-eqz p7, :cond_23

    .line 9
    new-instance p1, Lja/q$a;

    invoke-direct {p1}, Lja/q$a;-><init>()V

    iput-object p1, p0, Lwa/k;->i:Lja/q$a;

    goto :goto_31

    :cond_23
    if-eqz p8, :cond_31

    .line 10
    new-instance p1, Lja/w$a;

    invoke-direct {p1}, Lja/w$a;-><init>()V

    iput-object p1, p0, Lwa/k;->h:Lja/w$a;

    .line 11
    sget-object p2, Lja/w;->j:Lja/v;

    invoke-virtual {p1, p2}, Lja/w$a;->d(Lja/v;)Lja/w$a;

    :cond_31
    :goto_31
    return-void
.end method

.method private static h(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_3d

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2e

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2e

    const-string v4, " \"<>^`{}|\\?#"

    .line 3
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2e

    if-nez p1, :cond_28

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_2e

    const/16 v4, 0x25

    if-ne v3, v4, :cond_28

    goto :goto_2e

    .line 4
    :cond_28
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    .line 5
    :cond_2e
    :goto_2e
    new-instance v3, Lokio/c;

    invoke-direct {v3}, Lokio/c;-><init>()V

    .line 6
    invoke-virtual {v3, p0, v1, v2}, Lokio/c;->K(Ljava/lang/String;II)Lokio/c;

    .line 7
    invoke-static {v3, p0, v2, v0, p1}, Lwa/k;->i(Lokio/c;Ljava/lang/String;IIZ)V

    .line 8
    invoke-virtual {v3}, Lokio/c;->o()Ljava/lang/String;

    move-result-object p0

    :cond_3d
    return-object p0
.end method

.method private static i(Lokio/c;Ljava/lang/String;IIZ)V
    .registers 11

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_6c

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_1a

    const/16 v2, 0x9

    if-eq v1, v2, :cond_66

    const/16 v2, 0xa

    if-eq v1, v2, :cond_66

    const/16 v2, 0xc

    if-eq v1, v2, :cond_66

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1a

    goto :goto_66

    :cond_1a
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_3a

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_3a

    const-string v2, " \"<>^`{}|\\?#"

    .line 2
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3a

    if-nez p4, :cond_36

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_3a

    if-ne v1, v3, :cond_36

    goto :goto_3a

    .line 3
    :cond_36
    invoke-virtual {p0, v1}, Lokio/c;->M(I)Lokio/c;

    goto :goto_66

    :cond_3a
    :goto_3a
    if-nez v0, :cond_41

    .line 4
    new-instance v0, Lokio/c;

    invoke-direct {v0}, Lokio/c;-><init>()V

    .line 5
    :cond_41
    invoke-virtual {v0, v1}, Lokio/c;->M(I)Lokio/c;

    .line 6
    :goto_44
    invoke-virtual {v0}, Lokio/c;->S0()Z

    move-result v2

    if-nez v2, :cond_66

    .line 7
    invoke-virtual {v0}, Lokio/c;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 8
    invoke-virtual {p0, v3}, Lokio/c;->z(I)Lokio/c;

    .line 9
    sget-object v4, Lwa/k;->k:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v5, v4, v5

    invoke-virtual {p0, v5}, Lokio/c;->z(I)Lokio/c;

    and-int/lit8 v2, v2, 0xf

    .line 10
    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lokio/c;->z(I)Lokio/c;

    goto :goto_44

    .line 11
    :cond_66
    :goto_66
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_1

    :cond_6c
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    if-eqz p3, :cond_8

    .line 1
    iget-object p3, p0, Lwa/k;->i:Lja/q$a;

    invoke-virtual {p3, p1, p2}, Lja/q$a;->b(Ljava/lang/String;Ljava/lang/String;)Lja/q$a;

    goto :goto_d

    .line 2
    :cond_8
    iget-object p3, p0, Lwa/k;->i:Lja/q$a;

    invoke-virtual {p3, p1, p2}, Lja/q$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/q$a;

    :goto_d
    return-void
.end method

.method b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 2
    invoke-static {p2}, Lja/v;->d(Ljava/lang/String;)Lja/v;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 3
    iput-object p1, p0, Lwa/k;->f:Lja/v;

    goto :goto_2d

    .line 4
    :cond_11
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed content type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_28
    iget-object v0, p0, Lwa/k;->e:Lja/a0$a;

    invoke-virtual {v0, p1, p2}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    :goto_2d
    return-void
.end method

.method c(Lja/s;Lja/b0;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lwa/k;->h:Lja/w$a;

    invoke-virtual {v0, p1, p2}, Lja/w$a;->a(Lja/s;Lja/b0;)Lja/w$a;

    return-void
.end method

.method d(Lja/w$b;)V
    .registers 3

    .line 1
    iget-object v0, p0, Lwa/k;->h:Lja/w$a;

    invoke-virtual {v0, p1}, Lja/w$a;->b(Lja/w$b;)Lja/w$a;

    return-void
.end method

.method e(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    .line 1
    iget-object v0, p0, Lwa/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3}, Lwa/k;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwa/k;->c:Ljava/lang/String;

    return-void

    .line 3
    :cond_25
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method f(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lwa/k;->c:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 2
    iget-object v1, p0, Lwa/k;->b:Lja/t;

    invoke-virtual {v1, v0}, Lja/t;->q(Ljava/lang/String;)Lja/t$a;

    move-result-object v0

    iput-object v0, p0, Lwa/k;->d:Lja/t$a;

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lwa/k;->c:Ljava/lang/String;

    goto :goto_35

    .line 4
    :cond_12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lwa/k;->b:Lja/t;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lwa/k;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_35
    :goto_35
    if-eqz p3, :cond_3d

    .line 5
    iget-object p3, p0, Lwa/k;->d:Lja/t$a;

    invoke-virtual {p3, p1, p2}, Lja/t$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/t$a;

    goto :goto_42

    .line 6
    :cond_3d
    iget-object p3, p0, Lwa/k;->d:Lja/t$a;

    invoke-virtual {p3, p1, p2}, Lja/t$a;->b(Ljava/lang/String;Ljava/lang/String;)Lja/t$a;

    :goto_42
    return-void
.end method

.method g()Lja/a0;
    .registers 6

    .line 1
    iget-object v0, p0, Lwa/k;->d:Lja/t$a;

    if-eqz v0, :cond_9

    .line 2
    invoke-virtual {v0}, Lja/t$a;->c()Lja/t;

    move-result-object v0

    goto :goto_13

    .line 3
    :cond_9
    iget-object v0, p0, Lwa/k;->b:Lja/t;

    iget-object v1, p0, Lwa/k;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lja/t;->G(Ljava/lang/String;)Lja/t;

    move-result-object v0

    if-eqz v0, :cond_5e

    .line 4
    :goto_13
    iget-object v1, p0, Lwa/k;->j:Lja/b0;

    if-nez v1, :cond_35

    .line 5
    iget-object v2, p0, Lwa/k;->i:Lja/q$a;

    if-eqz v2, :cond_20

    .line 6
    invoke-virtual {v2}, Lja/q$a;->c()Lja/q;

    move-result-object v1

    goto :goto_35

    .line 7
    :cond_20
    iget-object v2, p0, Lwa/k;->h:Lja/w$a;

    if-eqz v2, :cond_29

    .line 8
    invoke-virtual {v2}, Lja/w$a;->c()Lja/w;

    move-result-object v1

    goto :goto_35

    .line 9
    :cond_29
    iget-boolean v2, p0, Lwa/k;->g:Z

    if-eqz v2, :cond_35

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 10
    invoke-static {v1, v2}, Lja/b0;->create(Lja/v;[B)Lja/b0;

    move-result-object v1

    .line 11
    :cond_35
    :goto_35
    iget-object v2, p0, Lwa/k;->f:Lja/v;

    if-eqz v2, :cond_4d

    if-eqz v1, :cond_42

    .line 12
    new-instance v3, Lwa/k$a;

    invoke-direct {v3, v1, v2}, Lwa/k$a;-><init>(Lja/b0;Lja/v;)V

    move-object v1, v3

    goto :goto_4d

    .line 13
    :cond_42
    iget-object v3, p0, Lwa/k;->e:Lja/a0$a;

    invoke-virtual {v2}, Lja/v;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lja/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lja/a0$a;

    .line 14
    :cond_4d
    :goto_4d
    iget-object v2, p0, Lwa/k;->e:Lja/a0$a;

    .line 15
    invoke-virtual {v2, v0}, Lja/a0$a;->i(Lja/t;)Lja/a0$a;

    move-result-object v0

    iget-object v2, p0, Lwa/k;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v2, v1}, Lja/a0$a;->f(Ljava/lang/String;Lja/b0;)Lja/a0$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lja/a0$a;->b()Lja/a0;

    move-result-object v0

    return-object v0

    .line 18
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwa/k;->b:Lja/t;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwa/k;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method j(Lja/b0;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lwa/k;->j:Lja/b0;

    return-void
.end method

.method k(Ljava/lang/Object;)V
    .registers 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwa/k;->c:Ljava/lang/String;

    return-void
.end method

###### Class wa.k.a (wa.k$a)
.class Lwa/k$a;
.super Lja/b0;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwa/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lja/b0;

.field private final b:Lja/v;


# direct methods
.method constructor <init>(Lja/b0;Lja/v;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Lja/b0;-><init>()V

    .line 2
    iput-object p1, p0, Lwa/k$a;->a:Lja/b0;

    .line 3
    iput-object p2, p0, Lwa/k$a;->b:Lja/v;

    return-void
.end method


# virtual methods
.method public contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/k$a;->a:Lja/b0;

    invoke-virtual {v0}, Lja/b0;->contentLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lwa/k$a;->b:Lja/v;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lwa/k$a;->a:Lja/b0;

    invoke-virtual {v0, p1}, Lja/b0;->writeTo(Lokio/d;)V

    return-void
.end method
