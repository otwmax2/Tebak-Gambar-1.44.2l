###### Class com.google.android.gms.internal.ads.zzdhh (com.google.android.gms.internal.ads.zzdhh)
.class final Lcom/google/android/gms/internal/ads/zzdhh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbdk;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/zzdie;

.field final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdie;Landroid/view/ViewGroup;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdie;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhh;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdie;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzdhe;->C:Lcom/google/android/gms/internal/ads/zzfqk;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdie;->l()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_27

    .line 3
    :cond_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :cond_10
    if-ge v3, v2, :cond_27

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    if-eqz v4, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdie;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhh;->b:Landroid/view/ViewGroup;

    .line 6
    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_27
    :goto_27
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdie;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    return-void
.end method

.method public final zza()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdie;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdie;->m()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lorg/json/JSONObject;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhh;->a:Lcom/google/android/gms/internal/ads/zzdie;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdie;->n()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method
