###### Class com.google.android.play.core.assetpacks.AssetPackExtractionService (com.google.android.play.core.assetpacks.AssetPackExtractionService)
.class public Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;
.super Landroid/app/Service;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field o:Lcom/google/android/play/core/assetpacks/w;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    iget-object p1, p0, Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;->o:Lcom/google/android/play/core/assetpacks/w;

    return-object p1
.end method

.method public final onCreate()V
    .registers 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/play/core/assetpacks/r1;->a(Landroid/content/Context;)Ls4/a;

    move-result-object v0

    invoke-interface {v0, p0}, Ls4/a;->a(Lcom/google/android/play/core/assetpacks/AssetPackExtractionService;)V

    return-void
.end method
