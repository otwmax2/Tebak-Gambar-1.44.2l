###### Class com.google.android.gms.internal.ads.zzdm (com.google.android.gms.internal.ads.zzdm)
.class public interface abstract Lcom/google/android/gms/internal/ads/zzdm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzdm;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzep;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzep;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdm;->a:Lcom/google/android/gms/internal/ads/zzdm;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdv;
.end method

.method public abstract zza()J
.end method
