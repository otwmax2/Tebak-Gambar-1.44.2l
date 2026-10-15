###### Class com.google.android.gms.ads.internal.util.c (com.google.android.gms.ads.internal.util.c)
.class final Lcom/google/android/gms/ads/internal/util/c;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic o:Lcom/google/android/gms/ads/internal/util/d;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/d;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/c;->o:Lcom/google/android/gms/ads/internal/util/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->r()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object p1, p0, Lcom/google/android/gms/ads/internal/util/c;->o:Lcom/google/android/gms/ads/internal/util/d;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/util/d;->o:Landroid/content/Context;

    const-string p2, "https://support.google.com/dfp_premium/answer/7160685#push"

    .line 2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 3
    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->r(Landroid/content/Context;Landroid/net/Uri;)V

    return-void
.end method
