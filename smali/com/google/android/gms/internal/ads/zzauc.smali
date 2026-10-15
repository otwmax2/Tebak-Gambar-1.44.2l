###### Class com.google.android.gms.internal.ads.zzauc (com.google.android.gms.internal.ads.zzauc)
.class final Lcom/google/android/gms/internal/ads/zzauc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final o:Landroid/webkit/ValueCallback;

.field final synthetic p:Lcom/google/android/gms/internal/ads/zzatu;

.field final synthetic q:Landroid/webkit/WebView;

.field final synthetic r:Z

.field final synthetic s:Lcom/google/android/gms/internal/ads/zzaue;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaue;Lcom/google/android/gms/internal/ads/zzatu;Landroid/webkit/WebView;Z)V
    .registers 5

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauc;->s:Lcom/google/android/gms/internal/ads/zzaue;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzauc;->p:Lcom/google/android/gms/internal/ads/zzatu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzauc;->q:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzauc;->r:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaub;

    invoke-direct {p1, p0, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzaub;-><init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzatu;Landroid/webkit/WebView;Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauc;->o:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->q:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    :try_start_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->q:Landroid/webkit/WebView;

    const-string v1, "(function() { return  {text:document.body.innerText}})();"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzauc;->o:Landroid/webkit/ValueCallback;

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_15
    .catchall {:try_start_c .. :try_end_15} :catchall_16

    return-void

    :catchall_16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzauc;->o:Landroid/webkit/ValueCallback;

    const-string v1, ""

    .line 3
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1d
    return-void
.end method

###### Class com.google.android.gms.internal.ads.zzaub (com.google.android.gms.internal.ads.zzaub)
.class public final synthetic Lcom/google/android/gms/internal/ads/zzaub;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@22.0.0"

# interfaces
.implements Landroid/webkit/ValueCallback;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzauc;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzatu;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzauc;Lcom/google/android/gms/internal/ads/zzatu;Landroid/webkit/WebView;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaub;->a:Lcom/google/android/gms/internal/ads/zzauc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaub;->b:Lcom/google/android/gms/internal/ads/zzatu;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzaub;->c:Landroid/webkit/WebView;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzaub;->d:Z

    return-void
.end method


# virtual methods
.method public final onReceiveValue(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaub;->a:Lcom/google/android/gms/internal/ads/zzauc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaub;->b:Lcom/google/android/gms/internal/ads/zzatu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaub;->c:Landroid/webkit/WebView;

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzaub;->d:Z

    check-cast p1, Ljava/lang/String;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzauc;->s:Lcom/google/android/gms/internal/ads/zzaue;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/ads/zzaue;->d(Lcom/google/android/gms/internal/ads/zzatu;Landroid/webkit/WebView;Ljava/lang/String;Z)V

    return-void
.end method
