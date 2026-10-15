###### Class com.google.android.play.core.assetpacks.r3 (com.google.android.play.core.assetpacks.r3)
.class public final Lcom/google/android/play/core/assetpacks/r3;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Landroid/content/Context;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/play/core/assetpacks/n3;


# direct methods
.method public constructor <init>(Lcom/google/android/play/core/assetpacks/n3;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/r3;->a:Lcom/google/android/play/core/assetpacks/n3;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/r3;->a:Lcom/google/android/play/core/assetpacks/n3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/n3;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/b0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/r3;->a:Lcom/google/android/play/core/assetpacks/n3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/n3;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lv4/b0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
