###### Class com.google.android.gms.ads.internal.util.m (com.google.android.gms.ads.internal.util.m)
.class final Lcom/google/android/gms/ads/internal/util/m;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbq;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzbbs;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Lcom/google/android/gms/internal/ads/zzbbs;Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/m;->a:Lcom/google/android/gms/internal/ads/zzbbs;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/m;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/util/m;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/m;->a:Lcom/google/android/gms/internal/ads/zzbbs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbs;->a()Landroidx/browser/customtabs/f;

    move-result-object v0

    .line 2
    new-instance v1, Landroidx/browser/customtabs/d$a;

    invoke-direct {v1, v0}, Landroidx/browser/customtabs/d$a;-><init>(Landroidx/browser/customtabs/f;)V

    .line 3
    invoke-virtual {v1}, Landroidx/browser/customtabs/d$a;->a()Landroidx/browser/customtabs/d;

    move-result-object v0

    .line 4
    iget-object v1, v0, Landroidx/browser/customtabs/d;->a:Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/m;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgxm;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/m;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/m;->c:Landroid/net/Uri;

    .line 5
    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/d;->a(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/m;->a:Lcom/google/android/gms/internal/ads/zzbbs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/m;->b:Landroid/content/Context;

    .line 6
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbbs;->f(Landroid/app/Activity;)V

    return-void
.end method
