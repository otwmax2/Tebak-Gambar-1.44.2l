###### Class com.google.android.play.core.assetpacks.e1 (com.google.android.play.core.assetpacks.e1)
.class final Lcom/google/android/play/core/assetpacks/e1;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# static fields
.field private static final k:Lv4/a;


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/w1;

.field private final b:Lcom/google/android/play/core/assetpacks/y0;

.field private final c:Lcom/google/android/play/core/assetpacks/f3;

.field private final d:Lcom/google/android/play/core/assetpacks/i2;

.field private final e:Lcom/google/android/play/core/assetpacks/n2;

.field private final f:Lcom/google/android/play/core/assetpacks/u2;

.field private final g:Lcom/google/android/play/core/assetpacks/y2;

.field private final h:Lv4/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/play/core/assetpacks/z1;

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1
    new-instance v0, Lv4/a;

    const-string v1, "ExtractorLooper"

    invoke-direct {v0, v1}, Lv4/a;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/assetpacks/e1;->k:Lv4/a;

    return-void
.end method

.method constructor <init>(Lcom/google/android/play/core/assetpacks/w1;Lv4/y;Lcom/google/android/play/core/assetpacks/y0;Lcom/google/android/play/core/assetpacks/f3;Lcom/google/android/play/core/assetpacks/i2;Lcom/google/android/play/core/assetpacks/n2;Lcom/google/android/play/core/assetpacks/u2;Lcom/google/android/play/core/assetpacks/y2;Lcom/google/android/play/core/assetpacks/z1;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/assetpacks/w1;",
            "Lv4/y<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lcom/google/android/play/core/assetpacks/y0;",
            "Lcom/google/android/play/core/assetpacks/f3;",
            "Lcom/google/android/play/core/assetpacks/i2;",
            "Lcom/google/android/play/core/assetpacks/n2;",
            "Lcom/google/android/play/core/assetpacks/u2;",
            "Lcom/google/android/play/core/assetpacks/y2;",
            "Lcom/google/android/play/core/assetpacks/z1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e1;->a:Lcom/google/android/play/core/assetpacks/w1;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/e1;->h:Lv4/y;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/e1;->b:Lcom/google/android/play/core/assetpacks/y0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/e1;->c:Lcom/google/android/play/core/assetpacks/f3;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/e1;->d:Lcom/google/android/play/core/assetpacks/i2;

    iput-object p6, p0, Lcom/google/android/play/core/assetpacks/e1;->e:Lcom/google/android/play/core/assetpacks/n2;

    iput-object p7, p0, Lcom/google/android/play/core/assetpacks/e1;->f:Lcom/google/android/play/core/assetpacks/u2;

    iput-object p8, p0, Lcom/google/android/play/core/assetpacks/e1;->g:Lcom/google/android/play/core/assetpacks/y2;

    iput-object p9, p0, Lcom/google/android/play/core/assetpacks/e1;->i:Lcom/google/android/play/core/assetpacks/z1;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/e1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private final b(ILjava/lang/Exception;)V
    .registers 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e1;->a:Lcom/google/android/play/core/assetpacks/w1;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/google/android/play/core/assetpacks/w1;->k(II)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e1;->a:Lcom/google/android/play/core/assetpacks/w1;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/play/core/assetpacks/w1;->l(I)V
    :try_end_b
    .catch Lcom/google/android/play/core/assetpacks/d1; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    sget-object p1, Lcom/google/android/play/core/assetpacks/e1;->k:Lv4/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    const-string p2, "Error during error handling: %s"

    invoke-virtual {p1, p2, v0}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method


# virtual methods
.method final a()V
    .registers 8

    .line 1
    sget-object v0, Lcom/google/android/play/core/assetpacks/e1;->k:Lv4/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Run extractor loop"

    invoke-virtual {v0, v3, v2}, Lv4/a;->a(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    .line 2
    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_d0

    :goto_13
    const/4 v0, 0x0

    :try_start_14
    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->i:Lcom/google/android/play/core/assetpacks/z1;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/play/core/assetpacks/z1;->a()Lcom/google/android/play/core/assetpacks/y1;

    move-result-object v0
    :try_end_1a
    .catch Lcom/google/android/play/core/assetpacks/d1; {:try_start_14 .. :try_end_1a} :catch_1b

    goto :goto_41

    :catch_1b
    move-exception v2

    .line 4
    sget-object v4, Lcom/google/android/play/core/assetpacks/e1;->k:Lv4/a;

    new-array v5, v3, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Error while getting next extraction task: %s"

    invoke-virtual {v4, v6, v5}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget v4, v2, Lcom/google/android/play/core/assetpacks/d1;->o:I

    if-ltz v4, :cond_41

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e1;->h:Lv4/y;

    .line 6
    invoke-interface {v4}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/u3;

    iget v5, v2, Lcom/google/android/play/core/assetpacks/d1;->o:I

    invoke-interface {v4, v5}, Lcom/google/android/play/core/assetpacks/u3;->Q(I)V

    iget v4, v2, Lcom/google/android/play/core/assetpacks/d1;->o:I

    .line 7
    invoke-direct {p0, v4, v2}, Lcom/google/android/play/core/assetpacks/e1;->b(ILjava/lang/Exception;)V

    :cond_41
    :goto_41
    if-eqz v0, :cond_ca

    .line 8
    :try_start_43
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/x0;

    if-eqz v2, :cond_50

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->b:Lcom/google/android/play/core/assetpacks/y0;

    .line 9
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/x0;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/y0;->a(Lcom/google/android/play/core/assetpacks/x0;)V

    goto :goto_13

    .line 10
    :cond_50
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/e3;

    if-eqz v2, :cond_5d

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->c:Lcom/google/android/play/core/assetpacks/f3;

    .line 11
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/e3;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/f3;->a(Lcom/google/android/play/core/assetpacks/e3;)V

    goto :goto_13

    .line 12
    :cond_5d
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/h2;

    if-eqz v2, :cond_6a

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->d:Lcom/google/android/play/core/assetpacks/i2;

    .line 13
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/h2;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/i2;->a(Lcom/google/android/play/core/assetpacks/h2;)V

    goto :goto_13

    .line 14
    :cond_6a
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/k2;

    if-eqz v2, :cond_77

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->e:Lcom/google/android/play/core/assetpacks/n2;

    .line 15
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/k2;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/n2;->a(Lcom/google/android/play/core/assetpacks/k2;)V

    goto :goto_13

    .line 16
    :cond_77
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/t2;

    if-eqz v2, :cond_84

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->f:Lcom/google/android/play/core/assetpacks/u2;

    .line 17
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/t2;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/u2;->a(Lcom/google/android/play/core/assetpacks/t2;)V

    goto :goto_13

    .line 18
    :cond_84
    instance-of v2, v0, Lcom/google/android/play/core/assetpacks/w2;

    if-eqz v2, :cond_91

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/e1;->g:Lcom/google/android/play/core/assetpacks/y2;

    .line 19
    move-object v4, v0

    check-cast v4, Lcom/google/android/play/core/assetpacks/w2;

    invoke-virtual {v2, v4}, Lcom/google/android/play/core/assetpacks/y2;->a(Lcom/google/android/play/core/assetpacks/w2;)V

    goto :goto_13

    :cond_91
    sget-object v2, Lcom/google/android/play/core/assetpacks/e1;->k:Lv4/a;

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 20
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "Unknown task type: %s"

    invoke-virtual {v2, v5, v4}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_a4
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_a4} :catch_a6

    goto/16 :goto_13

    :catch_a6
    move-exception v2

    .line 21
    sget-object v4, Lcom/google/android/play/core/assetpacks/e1;->k:Lv4/a;

    new-array v5, v3, [Ljava/lang/Object;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "Error during extraction task: %s"

    invoke-virtual {v4, v6, v5}, Lv4/a;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v4, p0, Lcom/google/android/play/core/assetpacks/e1;->h:Lv4/y;

    .line 23
    invoke-interface {v4}, Lv4/y;->zza()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/play/core/assetpacks/u3;

    iget v5, v0, Lcom/google/android/play/core/assetpacks/y1;->a:I

    invoke-interface {v4, v5}, Lcom/google/android/play/core/assetpacks/u3;->Q(I)V

    iget v0, v0, Lcom/google/android/play/core/assetpacks/y1;->a:I

    .line 24
    invoke-direct {p0, v0, v2}, Lcom/google/android/play/core/assetpacks/e1;->b(ILjava/lang/Exception;)V

    goto/16 :goto_13

    .line 25
    :cond_ca
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/e1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_d0
    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "runLoop already looping; return"

    .line 27
    invoke-virtual {v0, v2, v1}, Lv4/a;->e(Ljava/lang/String;[Ljava/lang/Object;)I

    return-void
.end method
