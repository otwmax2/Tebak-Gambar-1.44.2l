###### Class com.google.android.gms.internal.ads.zzxr (com.google.android.gms.internal.ads.zzxr)
.class final Lcom/google/android/gms/internal/ads/zzxr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzyd;

.field private final b:Lcom/google/android/gms/internal/ads/zzxs;

.field private final c:Ljava/util/ArrayDeque;

.field private final d:Ljava/util/ArrayDeque;

.field private e:Z

.field private final f:Lcom/google/android/gms/internal/ads/zzda;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzxs;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->a:Lcom/google/android/gms/internal/ads/zzyd;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxr;->b:Lcom/google/android/gms/internal/ads/zzxs;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->c:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 2
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->d:Ljava/util/ArrayDeque;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->e:Z

    .line 3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzda;->e:Lcom/google/android/gms/internal/ads/zzda;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->f:Lcom/google/android/gms/internal/ads/zzda;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->b:Lcom/google/android/gms/internal/ads/zzxs;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzxs;->W0(Lcom/google/android/gms/internal/ads/zzxs;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/android/gms/internal/ads/zzew;->a:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_22

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v0, v2, :cond_19

    goto :goto_22

    .line 3
    :cond_19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfnb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "OMX."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    :cond_22
    :goto_22
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzaf;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhj;
        }
    .end annotation

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzxr;->e:Z

    const/4 v0, 0x0

    if-nez p1, :cond_6

    return v0

    :cond_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzxr;->e:Z

    return v0
.end method
