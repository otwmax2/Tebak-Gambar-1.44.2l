###### Class j5.s (j5.s)
.class public final Lj5/s;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@19.3.1"


# instance fields
.field private volatile a:I

.field private final b:Lj5/f;

.field private volatile c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lj5/f;)V
    .registers 4
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lj5/s;->c:Z

    .line 4
    iput v0, p0, Lj5/s;->a:I

    .line 5
    iput-object p2, p0, Lj5/s;->b:Lj5/f;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->c(Landroid/app/Application;)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->b()Lcom/google/android/gms/common/api/internal/BackgroundDetector;

    move-result-object p1

    new-instance p2, Lj5/r;

    invoke-direct {p2, p0}, Lj5/r;-><init>(Lj5/s;)V

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/common/api/internal/BackgroundDetector;->a(Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lb5/g;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Lb5/g;->l()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lj5/f;

    invoke-direct {v1, p1}, Lj5/f;-><init>(Lb5/g;)V

    invoke-direct {p0, v0, v1}, Lj5/s;-><init>(Landroid/content/Context;Lj5/f;)V

    return-void
.end method

.method static synthetic c(Lj5/s;)Z
    .registers 1

    .line 1
    invoke-direct {p0}, Lj5/s;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lj5/s;Z)Z
    .registers 2

    .line 1
    iput-boolean p1, p0, Lj5/s;->c:Z

    return p1
.end method

.method static synthetic e(Lj5/s;)Lj5/f;
    .registers 1

    .line 1
    iget-object p0, p0, Lj5/s;->b:Lj5/f;

    return-object p0
.end method

.method private final f()Z
    .registers 2

    .line 1
    iget v0, p0, Lj5/s;->a:I

    if-lez v0, :cond_a

    iget-boolean v0, p0, Lj5/s;->c:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    .line 1
    iget-object v0, p0, Lj5/s;->b:Lj5/f;

    invoke-virtual {v0}, Lj5/f;->c()V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/firebase_auth/zzff;)V
    .registers 8

    if-nez p1, :cond_3

    return-void

    .line 1
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->a4()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_f

    const-wide/16 v0, 0xe10

    .line 2
    :cond_f
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase_auth/zzff;->b4()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v0, v0, v4

    add-long/2addr v2, v0

    .line 3
    iget-object p1, p0, Lj5/s;->b:Lj5/f;

    .line 4
    iput-wide v2, p1, Lj5/f;->b:J

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p1, Lj5/f;->c:J

    .line 6
    invoke-direct {p0}, Lj5/s;->f()Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 7
    iget-object p1, p0, Lj5/s;->b:Lj5/f;

    invoke-virtual {p1}, Lj5/f;->a()V

    :cond_2b
    return-void
.end method
