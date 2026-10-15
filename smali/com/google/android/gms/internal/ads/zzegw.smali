###### Class com.google.android.gms.internal.ads.zzegw (com.google.android.gms.internal.ads.zzegw)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzegw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic o:Lcom/google/android/gms/internal/ads/zzegx;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzegx;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegw;->o:Lcom/google/android/gms/internal/ads/zzegx;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegw;->o:Lcom/google/android/gms/internal/ads/zzegx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzegx;->c(Lcom/google/android/gms/internal/ads/zzegx;)V

    return-void
.end method
