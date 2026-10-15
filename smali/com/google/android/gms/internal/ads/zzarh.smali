###### Class com.google.android.gms.internal.ads.zzarh (com.google.android.gms.internal.ads.zzarh)
.class public final Lcom/google/android/gms/internal/ads/zzarh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "android:establish_vpn_service"

    const-string v1, "android:establish_vpn_manager"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzarh;->e:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;[Ljava/lang/String;)V
    .registers 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->a:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->b:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->c:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->d:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_17

    return-void

    :cond_17
    new-instance v0, Lcom/google/android/gms/internal/ads/zzarg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzarg;-><init>(Lcom/google/android/gms/internal/ads/zzarh;)V

    :try_start_1c
    const-string v1, "appops"

    .line 2
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    .line 3
    invoke-virtual {p1, p3, p2, v0}, Landroid/app/AppOpsManager;->startWatchingActive([Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/app/AppOpsManager$OnOpActiveChangedListener;)V
    :try_end_27
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1c .. :try_end_27} :catch_27
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method

.method static bridge synthetic a(Lcom/google/android/gms/internal/ads/zzarh;)J
    .registers 3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->b:J

    return-wide v0
.end method

.method public static d(Landroid/content/Context;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzarh;
    .registers 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarh;->e:[Ljava/lang/String;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzarh;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzarh;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;[Ljava/lang/String;)V

    return-object v1
.end method

.method static bridge synthetic e(Lcom/google/android/gms/internal/ads/zzarh;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzarh;->c:J

    return-void
.end method

.method static bridge synthetic f(Lcom/google/android/gms/internal/ads/zzarh;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzarh;->d:Z

    return-void
.end method

.method static bridge synthetic g(Lcom/google/android/gms/internal/ads/zzarh;J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzarh;->a:J

    return-void
.end method


# virtual methods
.method public final b()J
    .registers 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->c:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzarh;->c:J

    return-wide v0
.end method

.method public final c()J
    .registers 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->d:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->b:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzarh;->a:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_a
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final h()V
    .registers 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->d:Z

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzarh;->b:J

    :cond_a
    return-void
.end method
