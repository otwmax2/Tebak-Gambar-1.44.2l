###### Class com.google.android.gms.internal.ads.zzho (com.google.android.gms.internal.ads.zzho)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzho;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfok;


# instance fields
.field public final synthetic o:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzho;->o:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzho;->o:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzht;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzsr;

    move-result-object v0

    return-object v0
.end method
