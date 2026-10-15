###### Class com.google.android.gms.internal.ads.zzdxo (com.google.android.gms.internal.ads.zzdxo)
.class public final Lcom/google/android/gms/internal/ads/zzdxo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# static fields
.field public static final d:Lcom/google/android/gms/internal/ads/zzbly;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdyc;

.field public final b:Lorg/json/JSONObject;

.field public final c:Lcom/google/android/gms/internal/ads/zzbtq;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdxn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdxn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdxo;->d:Lcom/google/android/gms/internal/ads/zzbly;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdyc;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbtq;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxo;->a:Lcom/google/android/gms/internal/ads/zzdyc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxo;->b:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdxo;->c:Lcom/google/android/gms/internal/ads/zzbtq;

    return-void
.end method
