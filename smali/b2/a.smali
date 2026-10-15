###### Class b2.a (b2.a)
.class Lb2/a;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb2/a$b;,
        Lb2/a$a;,
        Lb2/a$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final m:Lb2/a$b;


# instance fields
.field private final a:Lb2/f;

.field private final b:I

.field private final c:I

.field private final d:La2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La2/c<",
            "TA;>;"
        }
    .end annotation
.end field

.field private final e:Ls2/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls2/b<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final f:Lz1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final g:Lp2/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp2/c<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private final h:Lb2/a$a;

.field private final i:Lb2/b;

.field private final j:Lv1/i;

.field private final k:Lb2/a$b;

.field private volatile l:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Lb2/a$b;

    invoke-direct {v0}, Lb2/a$b;-><init>()V

    sput-object v0, Lb2/a;->m:Lb2/a$b;

    return-void
.end method

.method public constructor <init>(Lb2/f;IILa2/c;Ls2/b;Lz1/g;Lp2/c;Lb2/a$a;Lb2/b;Lv1/i;)V
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/f;",
            "II",
            "La2/c<",
            "TA;>;",
            "Ls2/b<",
            "TA;TT;>;",
            "Lz1/g<",
            "TT;>;",
            "Lp2/c<",
            "TT;TZ;>;",
            "Lb2/a$a;",
            "Lb2/b;",
            "Lv1/i;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v11, Lb2/a;->m:Lb2/a$b;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lb2/a;-><init>(Lb2/f;IILa2/c;Ls2/b;Lz1/g;Lp2/c;Lb2/a$a;Lb2/b;Lv1/i;Lb2/a$b;)V

    return-void
.end method

.method constructor <init>(Lb2/f;IILa2/c;Ls2/b;Lz1/g;Lp2/c;Lb2/a$a;Lb2/b;Lv1/i;Lb2/a$b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/f;",
            "II",
            "La2/c<",
            "TA;>;",
            "Ls2/b<",
            "TA;TT;>;",
            "Lz1/g<",
            "TT;>;",
            "Lp2/c<",
            "TT;TZ;>;",
            "Lb2/a$a;",
            "Lb2/b;",
            "Lv1/i;",
            "Lb2/a$b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lb2/a;->a:Lb2/f;

    .line 4
    iput p2, p0, Lb2/a;->b:I

    .line 5
    iput p3, p0, Lb2/a;->c:I

    .line 6
    iput-object p4, p0, Lb2/a;->d:La2/c;

    .line 7
    iput-object p5, p0, Lb2/a;->e:Ls2/b;

    .line 8
    iput-object p6, p0, Lb2/a;->f:Lz1/g;

    .line 9
    iput-object p7, p0, Lb2/a;->g:Lp2/c;

    .line 10
    iput-object p8, p0, Lb2/a;->h:Lb2/a$a;

    .line 11
    iput-object p9, p0, Lb2/a;->i:Lb2/b;

    .line 12
    iput-object p10, p0, Lb2/a;->j:Lv1/i;

    .line 13
    iput-object p11, p0, Lb2/a;->k:Lb2/a$b;

    return-void
.end method

.method static synthetic a(Lb2/a;)Lb2/a$b;
    .registers 1

    .line 1
    iget-object p0, p0, Lb2/a;->k:Lb2/a$b;

    return-object p0
.end method

.method private b(Ljava/lang/Object;)Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 2
    new-instance v2, Lb2/a$c;

    iget-object v3, p0, Lb2/a;->e:Ls2/b;

    invoke-interface {v3}, Ls2/b;->a()Lz1/b;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lb2/a$c;-><init>(Lb2/a;Lz1/b;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lb2/a;->h:Lb2/a$a;

    invoke-interface {p1}, Lb2/a$a;->a()Ld2/a;

    move-result-object p1

    iget-object v3, p0, Lb2/a;->a:Lb2/f;

    invoke-virtual {v3}, Lb2/f;->b()Lz1/c;

    move-result-object v3

    invoke-interface {p1, v3, v2}, Ld2/a;->a(Lz1/c;Ld2/a$b;)V

    const-string p1, "DecodeJob"

    const/4 v2, 0x2

    .line 4
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2c

    const-string v3, "Wrote source to cache"

    .line 5
    invoke-direct {p0, v3, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    .line 6
    :cond_2c
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 7
    iget-object v3, p0, Lb2/a;->a:Lb2/f;

    invoke-virtual {v3}, Lb2/f;->b()Lz1/c;

    move-result-object v3

    invoke-direct {p0, v3}, Lb2/a;->i(Lz1/c;)Lb2/l;

    move-result-object v3

    .line 8
    invoke-static {p1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_47

    if-eqz v3, :cond_47

    const-string p1, "Decoded source from cache"

    .line 9
    invoke-direct {p0, p1, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    :cond_47
    return-object v3
.end method

.method private e(Ljava/lang/Object;)Lb2/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/a;->i:Lb2/b;

    invoke-virtual {v0}, Lb2/b;->e()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2
    invoke-direct {p0, p1}, Lb2/a;->b(Ljava/lang/Object;)Lb2/l;

    move-result-object p1

    goto :goto_2d

    .line 3
    :cond_d
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lb2/a;->e:Ls2/b;

    invoke-interface {v2}, Ls2/b;->f()Lz1/e;

    move-result-object v2

    iget v3, p0, Lb2/a;->b:I

    iget v4, p0, Lb2/a;->c:I

    invoke-interface {v2, p1, v3, v4}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object p1

    const/4 v2, 0x2

    const-string v3, "DecodeJob"

    .line 5
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, "Decoded from source"

    .line 6
    invoke-direct {p0, v2, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    :cond_2d
    :goto_2d
    return-object p1
.end method

.method private g()Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lb2/a;->d:La2/c;

    iget-object v3, p0, Lb2/a;->j:Lv1/i;

    invoke-interface {v2, v3}, La2/c;->b(Lv1/i;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    .line 3
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1a

    const-string v3, "Fetched data"

    .line 4
    invoke-direct {p0, v3, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    .line 5
    :cond_1a
    iget-boolean v0, p0, Lb2/a;->l:Z
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_2f

    if-eqz v0, :cond_25

    const/4 v0, 0x0

    .line 6
    iget-object v1, p0, Lb2/a;->d:La2/c;

    invoke-interface {v1}, La2/c;->c()V

    return-object v0

    .line 7
    :cond_25
    :try_start_25
    invoke-direct {p0, v2}, Lb2/a;->e(Ljava/lang/Object;)Lb2/l;

    move-result-object v0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2f

    .line 8
    iget-object v1, p0, Lb2/a;->d:La2/c;

    invoke-interface {v1}, La2/c;->c()V

    return-object v0

    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lb2/a;->d:La2/c;

    invoke-interface {v1}, La2/c;->c()V

    throw v0
.end method

.method private i(Lz1/c;)Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/c;",
            ")",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/a;->h:Lb2/a$a;

    invoke-interface {v0}, Lb2/a$a;->a()Ld2/a;

    move-result-object v0

    invoke-interface {v0, p1}, Ld2/a;->c(Lz1/c;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_e
    :try_start_e
    iget-object v1, p0, Lb2/a;->e:Ls2/b;

    invoke-interface {v1}, Ls2/b;->g()Lz1/e;

    move-result-object v1

    iget v2, p0, Lb2/a;->b:I

    iget v3, p0, Lb2/a;->c:I

    invoke-interface {v1, v0, v2, v3}, Lz1/e;->b(Ljava/lang/Object;II)Lb2/l;

    move-result-object v0
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_28

    if-nez v0, :cond_27

    .line 3
    iget-object v1, p0, Lb2/a;->h:Lb2/a$a;

    invoke-interface {v1}, Lb2/a$a;->a()Ld2/a;

    move-result-object v1

    invoke-interface {v1, p1}, Ld2/a;->b(Lz1/c;)V

    :cond_27
    return-object v0

    :catchall_28
    move-exception v0

    iget-object v1, p0, Lb2/a;->h:Lb2/a$a;

    invoke-interface {v1}, Lb2/a$a;->a()Ld2/a;

    move-result-object v1

    invoke-interface {v1, p1}, Ld2/a;->b(Lz1/c;)V

    throw v0
.end method

.method private j(Ljava/lang/String;J)V
    .registers 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lx2/d;->a(J)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lb2/a;->a:Lb2/f;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DecodeJob"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private k(Lb2/l;)Lb2/l;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TT;>;)",
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lb2/a;->g:Lp2/c;

    invoke-interface {v0, p1}, Lp2/c;->b(Lb2/l;)Lb2/l;

    move-result-object p1

    return-object p1
.end method

.method private l(Lb2/l;)Lb2/l;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TT;>;)",
            "Lb2/l<",
            "TT;>;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lb2/a;->f:Lz1/g;

    iget v1, p0, Lb2/a;->b:I

    iget v2, p0, Lb2/a;->c:I

    invoke-interface {v0, p1, v1, v2}, Lz1/g;->b(Lb2/l;II)Lb2/l;

    move-result-object v0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 3
    invoke-interface {p1}, Lb2/l;->b()V

    :cond_17
    return-object v0
.end method

.method private m(Lb2/l;)Lb2/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TT;>;)",
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 2
    invoke-direct {p0, p1}, Lb2/a;->l(Lb2/l;)Lb2/l;

    move-result-object p1

    const-string v2, "DecodeJob"

    const/4 v3, 0x2

    .line 3
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "Transformed resource from source"

    .line 4
    invoke-direct {p0, v4, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    .line 5
    :cond_16
    invoke-direct {p0, p1}, Lb2/a;->n(Lb2/l;)V

    .line 6
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 7
    invoke-direct {p0, p1}, Lb2/a;->k(Lb2/l;)Lb2/l;

    move-result-object p1

    .line 8
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "Transcoded transformed from source"

    .line 9
    invoke-direct {p0, v2, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    :cond_2c
    return-object p1
.end method

.method private n(Lb2/l;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb2/l<",
            "TT;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_33

    .line 1
    iget-object v0, p0, Lb2/a;->i:Lb2/b;

    invoke-virtual {v0}, Lb2/b;->c()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_33

    .line 2
    :cond_b
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 3
    new-instance v2, Lb2/a$c;

    iget-object v3, p0, Lb2/a;->e:Ls2/b;

    invoke-interface {v3}, Ls2/b;->d()Lz1/f;

    move-result-object v3

    invoke-direct {v2, p0, v3, p1}, Lb2/a$c;-><init>(Lb2/a;Lz1/b;Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lb2/a;->h:Lb2/a$a;

    invoke-interface {p1}, Lb2/a$a;->a()Ld2/a;

    move-result-object p1

    iget-object v3, p0, Lb2/a;->a:Lb2/f;

    invoke-interface {p1, v3, v2}, Ld2/a;->a(Lz1/c;Ld2/a$b;)V

    const/4 p1, 0x2

    const-string v2, "DecodeJob"

    .line 5
    invoke-static {v2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_33

    const-string p1, "Wrote transformed from source to cache"

    .line 6
    invoke-direct {p0, p1, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    :cond_33
    :goto_33
    return-void
.end method


# virtual methods
.method public c()V
    .registers 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb2/a;->l:Z

    .line 2
    iget-object v0, p0, Lb2/a;->d:La2/c;

    invoke-interface {v0}, La2/c;->cancel()V

    return-void
.end method

.method public d()Lb2/l;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lb2/a;->g()Lb2/l;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lb2/a;->m(Lb2/l;)Lb2/l;

    move-result-object v0

    return-object v0
.end method

.method public f()Lb2/l;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/a;->i:Lb2/b;

    invoke-virtual {v0}, Lb2/b;->c()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lb2/a;->a:Lb2/f;

    invoke-direct {p0, v2}, Lb2/a;->i(Lz1/c;)Lb2/l;

    move-result-object v2

    const-string v3, "DecodeJob"

    const/4 v4, 0x2

    .line 4
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "Decoded transformed from cache"

    .line 5
    invoke-direct {p0, v5, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    .line 6
    :cond_22
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 7
    invoke-direct {p0, v2}, Lb2/a;->k(Lb2/l;)Lb2/l;

    move-result-object v2

    .line 8
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_35

    const-string v3, "Transcoded transformed from cache"

    .line 9
    invoke-direct {p0, v3, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    :cond_35
    return-object v2
.end method

.method public h()Lb2/l;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb2/l<",
            "TZ;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb2/a;->i:Lb2/b;

    invoke-virtual {v0}, Lb2/b;->e()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_a
    invoke-static {}, Lx2/d;->b()J

    move-result-wide v0

    .line 3
    iget-object v2, p0, Lb2/a;->a:Lb2/f;

    invoke-virtual {v2}, Lb2/f;->b()Lz1/c;

    move-result-object v2

    invoke-direct {p0, v2}, Lb2/a;->i(Lz1/c;)Lb2/l;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, "DecodeJob"

    .line 4
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v3, "Decoded source from cache"

    .line 5
    invoke-direct {p0, v3, v0, v1}, Lb2/a;->j(Ljava/lang/String;J)V

    .line 6
    :cond_26
    invoke-direct {p0, v2}, Lb2/a;->m(Lb2/l;)Lb2/l;

    move-result-object v0

    return-object v0
.end method

###### Class b2.a.InterfaceC0080a (b2.a$a)
.class interface abstract Lb2/a$a;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "a"
.end annotation


# virtual methods
.method public abstract a()Ld2/a;
.end method

###### Class b2.a.b (b2.a$b)
.class Lb2/a$b;
.super Ljava/lang/Object;
.source "DecodeJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Ljava/io/OutputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

###### Class b2.a.c (b2.a$c)
.class Lb2/a$c;
.super Ljava/lang/Object;
.source "DecodeJob.java"

# interfaces
.implements Ld2/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ld2/a$b;"
    }
.end annotation


# instance fields
.field private final a:Lz1/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lz1/b<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDataType;"
        }
    .end annotation
.end field

.field final synthetic c:Lb2/a;


# direct methods
.method public constructor <init>(Lb2/a;Lz1/b;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lz1/b<",
            "TDataType;>;TDataType;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lb2/a$c;->c:Lb2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lb2/a$c;->a:Lz1/b;

    .line 3
    iput-object p3, p0, Lb2/a$c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)Z
    .registers 5

    const-string v0, "DecodeJob"

    const/4 v1, 0x0

    .line 1
    :try_start_3
    iget-object v2, p0, Lb2/a$c;->c:Lb2/a;

    invoke-static {v2}, Lb2/a;->a(Lb2/a;)Lb2/a$b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lb2/a$b;->a(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v1

    .line 2
    iget-object p1, p0, Lb2/a$c;->a:Lz1/b;

    iget-object v2, p0, Lb2/a$c;->b:Ljava/lang/Object;

    invoke-interface {p1, v2, v1}, Lz1/b;->b(Ljava/lang/Object;Ljava/io/OutputStream;)Z

    move-result p1
    :try_end_15
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_15} :catch_1d
    .catchall {:try_start_3 .. :try_end_15} :catchall_1b

    if-eqz v1, :cond_30

    .line 3
    :try_start_17
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_30

    goto :goto_30

    :catchall_1b
    move-exception p1

    goto :goto_31

    :catch_1d
    move-exception p1

    const/4 v2, 0x3

    .line 4
    :try_start_1f
    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2a

    const-string v2, "Failed to find file to write to disk cache"

    .line 5
    invoke-static {v0, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_1b

    :cond_2a
    if-eqz v1, :cond_2f

    .line 6
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_2f

    :catch_2f
    :cond_2f
    const/4 p1, 0x0

    :catch_30
    :cond_30
    :goto_30
    return p1

    :goto_31
    if-eqz v1, :cond_36

    :try_start_33
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_36

    .line 7
    :catch_36
    :cond_36
    throw p1
.end method
