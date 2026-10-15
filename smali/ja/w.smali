###### Class ja.w (ja.w)
.class public final Lja/w;
.super Lja/b0;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lja/w$a;,
        Lja/w$b;
    }
.end annotation


# static fields
.field public static final f:Lja/v;

.field public static final g:Lja/v;

.field public static final h:Lja/v;

.field public static final i:Lja/v;

.field public static final j:Lja/v;

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B


# instance fields
.field private final a:Lokio/f;

.field private final b:Lja/v;

.field private final c:Lja/v;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "multipart/mixed"

    .line 1
    invoke-static {v0}, Lja/v;->c(Ljava/lang/String;)Lja/v;

    move-result-object v0

    sput-object v0, Lja/w;->f:Lja/v;

    const-string v0, "multipart/alternative"

    .line 2
    invoke-static {v0}, Lja/v;->c(Ljava/lang/String;)Lja/v;

    move-result-object v0

    sput-object v0, Lja/w;->g:Lja/v;

    const-string v0, "multipart/digest"

    .line 3
    invoke-static {v0}, Lja/v;->c(Ljava/lang/String;)Lja/v;

    move-result-object v0

    sput-object v0, Lja/w;->h:Lja/v;

    const-string v0, "multipart/parallel"

    .line 4
    invoke-static {v0}, Lja/v;->c(Ljava/lang/String;)Lja/v;

    move-result-object v0

    sput-object v0, Lja/w;->i:Lja/v;

    const-string v0, "multipart/form-data"

    .line 5
    invoke-static {v0}, Lja/v;->c(Ljava/lang/String;)Lja/v;

    move-result-object v0

    sput-object v0, Lja/w;->j:Lja/v;

    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 6
    fill-array-data v1, :array_40

    sput-object v1, Lja/w;->k:[B

    new-array v1, v0, [B

    .line 7
    fill-array-data v1, :array_46

    sput-object v1, Lja/w;->l:[B

    new-array v0, v0, [B

    .line 8
    fill-array-data v0, :array_4c

    sput-object v0, Lja/w;->m:[B

    return-void

    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/f;Lja/v;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/f;",
            "Lja/v;",
            "Ljava/util/List<",
            "Lja/w$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lja/b0;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lja/w;->e:J

    .line 3
    iput-object p1, p0, Lja/w;->a:Lokio/f;

    .line 4
    iput-object p2, p0, Lja/w;->b:Lja/v;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lokio/f;->O()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lja/v;->c(Ljava/lang/String;)Lja/v;

    move-result-object p1

    iput-object p1, p0, Lja/w;->c:Lja/v;

    .line 6
    invoke-static {p3}, Lka/c;->t(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lja/w;->d:Ljava/util/List;

    return-void
.end method

.method private a(Lokio/d;Z)J
    .registers 15
    .param p1    # Lokio/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 1
    new-instance p1, Lokio/c;

    invoke-direct {p1}, Lokio/c;-><init>()V

    move-object v0, p1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 2
    :goto_a
    iget-object v1, p0, Lja/w;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v1, :cond_a4

    .line 3
    iget-object v6, p0, Lja/w;->d:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lja/w$b;

    .line 4
    iget-object v7, v6, Lja/w$b;->a:Lja/s;

    .line 5
    iget-object v6, v6, Lja/w$b;->b:Lja/b0;

    .line 6
    sget-object v8, Lja/w;->m:[B

    invoke-interface {p1, v8}, Lokio/d;->Y2([B)Lokio/d;

    .line 7
    iget-object v8, p0, Lja/w;->a:Lokio/f;

    invoke-interface {p1, v8}, Lokio/d;->c3(Lokio/f;)Lokio/d;

    .line 8
    sget-object v8, Lja/w;->l:[B

    invoke-interface {p1, v8}, Lokio/d;->Y2([B)Lokio/d;

    if-eqz v7, :cond_58

    .line 9
    invoke-virtual {v7}, Lja/s;->h()I

    move-result v8

    const/4 v9, 0x0

    :goto_38
    if-ge v9, v8, :cond_58

    .line 10
    invoke-virtual {v7, v9}, Lja/s;->e(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v10}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v10

    sget-object v11, Lja/w;->k:[B

    .line 11
    invoke-interface {v10, v11}, Lokio/d;->Y2([B)Lokio/d;

    move-result-object v10

    .line 12
    invoke-virtual {v7, v9}, Lja/s;->i(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v10

    sget-object v11, Lja/w;->l:[B

    .line 13
    invoke-interface {v10, v11}, Lokio/d;->Y2([B)Lokio/d;

    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    .line 14
    :cond_58
    invoke-virtual {v6}, Lja/b0;->contentType()Lja/v;

    move-result-object v7

    if-eqz v7, :cond_71

    const-string v8, "Content-Type: "

    .line 15
    invoke-interface {p1, v8}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v8

    .line 16
    invoke-virtual {v7}, Lja/v;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v7

    sget-object v8, Lja/w;->l:[B

    .line 17
    invoke-interface {v7, v8}, Lokio/d;->Y2([B)Lokio/d;

    .line 18
    :cond_71
    invoke-virtual {v6}, Lja/b0;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_8b

    const-string v9, "Content-Length: "

    .line 19
    invoke-interface {p1, v9}, Lokio/d;->H1(Ljava/lang/String;)Lokio/d;

    move-result-object v9

    .line 20
    invoke-interface {v9, v7, v8}, Lokio/d;->D3(J)Lokio/d;

    move-result-object v9

    sget-object v10, Lja/w;->l:[B

    .line 21
    invoke-interface {v9, v10}, Lokio/d;->Y2([B)Lokio/d;

    goto :goto_91

    :cond_8b
    if-eqz p2, :cond_91

    .line 22
    invoke-virtual {v0}, Lokio/c;->b()V

    return-wide v9

    .line 23
    :cond_91
    :goto_91
    sget-object v9, Lja/w;->l:[B

    invoke-interface {p1, v9}, Lokio/d;->Y2([B)Lokio/d;

    if-eqz p2, :cond_9a

    add-long/2addr v3, v7

    goto :goto_9d

    .line 24
    :cond_9a
    invoke-virtual {v6, p1}, Lja/b0;->writeTo(Lokio/d;)V

    .line 25
    :goto_9d
    invoke-interface {p1, v9}, Lokio/d;->Y2([B)Lokio/d;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_14

    .line 26
    :cond_a4
    sget-object v1, Lja/w;->m:[B

    invoke-interface {p1, v1}, Lokio/d;->Y2([B)Lokio/d;

    .line 27
    iget-object v2, p0, Lja/w;->a:Lokio/f;

    invoke-interface {p1, v2}, Lokio/d;->c3(Lokio/f;)Lokio/d;

    .line 28
    invoke-interface {p1, v1}, Lokio/d;->Y2([B)Lokio/d;

    .line 29
    sget-object v1, Lja/w;->l:[B

    invoke-interface {p1, v1}, Lokio/d;->Y2([B)Lokio/d;

    if-eqz p2, :cond_c0

    .line 30
    invoke-virtual {v0}, Lokio/c;->s()J

    move-result-wide p1

    add-long/2addr v3, p1

    .line 31
    invoke-virtual {v0}, Lokio/c;->b()V

    :cond_c0
    return-wide v3
.end method


# virtual methods
.method public contentLength()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lja/w;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-direct {p0, v0, v1}, Lja/w;->a(Lokio/d;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lja/w;->e:J

    return-wide v0
.end method

.method public contentType()Lja/v;
    .registers 2

    .line 1
    iget-object v0, p0, Lja/w;->c:Lja/v;

    return-object v0
.end method

.method public writeTo(Lokio/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lja/w;->a(Lokio/d;Z)J

    return-void
.end method

###### Class ja.w.a (ja.w$a)
.class public final Lja/w$a;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lokio/f;

.field private b:Lja/v;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lja/w$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lja/w$a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lja/w;->f:Lja/v;

    iput-object v0, p0, Lja/w$a;->b:Lja/v;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lja/w$a;->c:Ljava/util/List;

    .line 5
    invoke-static {p1}, Lokio/f;->l(Ljava/lang/String;)Lokio/f;

    move-result-object p1

    iput-object p1, p0, Lja/w$a;->a:Lokio/f;

    return-void
.end method


# virtual methods
.method public a(Lja/s;Lja/b0;)Lja/w$a;
    .registers 3
    .param p1    # Lja/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1, p2}, Lja/w$b;->a(Lja/s;Lja/b0;)Lja/w$b;

    move-result-object p1

    invoke-virtual {p0, p1}, Lja/w$a;->b(Lja/w$b;)Lja/w$a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lja/w$b;)Lja/w$a;
    .registers 3

    const-string v0, "part == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lja/w$a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public c()Lja/w;
    .registers 5

    .line 1
    iget-object v0, p0, Lja/w$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2
    new-instance v0, Lja/w;

    iget-object v1, p0, Lja/w$a;->a:Lokio/f;

    iget-object v2, p0, Lja/w$a;->b:Lja/v;

    iget-object v3, p0, Lja/w$a;->c:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lja/w;-><init>(Lokio/f;Lja/v;Ljava/util/List;)V

    return-object v0

    .line 3
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Multipart body must have at least one part."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lja/v;)Lja/w$a;
    .registers 5

    const-string v0, "type == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lja/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3
    iput-object p1, p0, Lja/w$a;->b:Lja/v;

    return-object p0

    .line 4
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart != "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class ja.w.b (ja.w$b)
.class public final Lja/w$b;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lja/s;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final b:Lja/b0;


# direct methods
.method private constructor <init>(Lja/s;Lja/b0;)V
    .registers 3
    .param p1    # Lja/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lja/w$b;->a:Lja/s;

    .line 3
    iput-object p2, p0, Lja/w$b;->b:Lja/b0;

    return-void
.end method

.method public static a(Lja/s;Lja/b0;)Lja/w$b;
    .registers 3
    .param p0    # Lja/s;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "body == null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p0, :cond_18

    const-string v0, "Content-Type"

    .line 2
    invoke-virtual {p0, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    goto :goto_18

    .line 3
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    :goto_18
    if-eqz p0, :cond_2b

    const-string v0, "Content-Length"

    .line 4
    invoke-virtual {p0, v0}, Lja/s;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_23

    goto :goto_2b

    .line 5
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unexpected header: Content-Length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :cond_2b
    :goto_2b
    new-instance v0, Lja/w$b;

    invoke-direct {v0, p0, p1}, Lja/w$b;-><init>(Lja/s;Lja/b0;)V

    return-object v0
.end method
