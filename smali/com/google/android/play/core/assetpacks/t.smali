###### Class com.google.android.play.core.assetpacks.t (com.google.android.play.core.assetpacks.t)
.class public final Lcom/google/android/play/core/assetpacks/t;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/s;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;Lv4/c0;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Landroid/content/Context;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/t;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/t;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/t;->c:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/t;->a:Lv4/c0;

    check-cast v0, Lcom/google/android/play/core/assetpacks/r3;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/r3;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/t;->b:Lv4/c0;

    invoke-interface {v1}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/t;->c:Lv4/c0;

    invoke-interface {v2}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v2

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/s;

    check-cast v1, Lcom/google/android/play/core/assetpacks/h1;

    check-cast v2, Lcom/google/android/play/core/assetpacks/p2;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/s;-><init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;)V

    return-object v3
.end method
