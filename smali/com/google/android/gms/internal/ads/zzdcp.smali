###### Class com.google.android.gms.internal.ads.zzdcp (com.google.android.gms.internal.ads.zzdcp)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzdcp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzczx;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/internal/ads/zzdcp;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdcp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdcp;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdcp;->a:Lcom/google/android/gms/internal/ads/zzdcp;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->e()V

    return-void
.end method
