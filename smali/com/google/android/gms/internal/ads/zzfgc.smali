###### Class com.google.android.gms.internal.ads.zzfgc (com.google.android.gms.internal.ads.zzfgc)
.class public final Lcom/google/android/gms/internal/ads/zzfgc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/zzfgc;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfgc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfgc;->b:Lcom/google/android/gms/internal/ads/zzfgc;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/zzfgc;
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfgc;->b:Lcom/google/android/gms/internal/ads/zzfgc;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfgc;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final c(Landroid/content/Context;)V
    .registers 2

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfgc;->a:Landroid/content/Context;

    return-void
.end method
