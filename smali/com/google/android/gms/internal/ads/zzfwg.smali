###### Class com.google.android.gms.internal.ads.zzfwg (com.google.android.gms.internal.ads.zzfwg)
.class public final Lcom/google/android/gms/internal/ads/zzfwg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final b:Lcom/google/android/gms/internal/ads/zzfwg;

.field public static final c:Lcom/google/android/gms/internal/ads/zzfwg;

.field public static final d:Lcom/google/android/gms/internal/ads/zzfwg;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwg;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwg;->b:Lcom/google/android/gms/internal/ads/zzfwg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwg;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwg;->c:Lcom/google/android/gms/internal/ads/zzfwg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwg;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfwg;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfwg;->d:Lcom/google/android/gms/internal/ads/zzfwg;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwg;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwg;->a:Ljava/lang/String;

    return-object v0
.end method
