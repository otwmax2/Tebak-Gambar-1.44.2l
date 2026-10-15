###### Class com.google.android.play.core.assetpacks.v2 (com.google.android.play.core.assetpacks.v2)
.class public final Lcom/google/android/play/core/assetpacks/v2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/u2;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e0;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e0;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/v2;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/v2;->b:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/v2;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/v2;->b:Lv4/c0;

    invoke-static {v1}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/google/android/play/core/assetpacks/u2;

    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    invoke-direct {v2, v0, v1}, Lcom/google/android/play/core/assetpacks/u2;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;)V

    return-object v2
.end method
