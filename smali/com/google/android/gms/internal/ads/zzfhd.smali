###### Class com.google.android.gms.internal.ads.zzfhd (com.google.android.gms.internal.ads.zzfhd)
.class public abstract Lcom/google/android/gms/internal/ads/zzfhd;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/zzfhe;

.field protected final b:Lcom/google/android/gms/internal/ads/zzfgv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfgv;[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhd;->b:Lcom/google/android/gms/internal/ads/zzfgv;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhd;->a:Lcom/google/android/gms/internal/ads/zzfhe;

    if-eqz p1, :cond_7

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfhe;->a(Lcom/google/android/gms/internal/ads/zzfhd;)V

    :cond_7
    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/zzfhe;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfhd;->a:Lcom/google/android/gms/internal/ads/zzfhe;

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfhd;->a(Ljava/lang/String;)V

    return-void
.end method
