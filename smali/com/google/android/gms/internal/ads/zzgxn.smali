###### Class com.google.android.gms.internal.ads.zzgxn (com.google.android.gms.internal.ads.zzgxn)
.class public final Lcom/google/android/gms/internal/ads/zzgxn;
.super Landroidx/browser/customtabs/e;
.source "com.google.android.gms:play-services-ads@@22.0.0"


# instance fields
.field private final o:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbbs;[B)V
    .registers 3

    .line 1
    invoke-direct {p0}, Landroidx/browser/customtabs/e;-><init>()V

    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgxn;->o:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/c;)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbs;

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbs;->c(Landroidx/browser/customtabs/c;)V

    :cond_d
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgxn;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbs;

    if-eqz p1, :cond_d

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbs;->d()V

    :cond_d
    return-void
.end method
