###### Class com.google.android.play.core.assetpacks.q2 (com.google.android.play.core.assetpacks.q2)
.class public final Lcom/google/android/play/core/assetpacks/q2;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/p2;",
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
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lu4/b;",
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
            "Lcom/google/android/play/core/assetpacks/e0;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/r2;",
            ">;",
            "Lv4/c0<",
            "Lu4/b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/q2;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/q2;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/q2;->c:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/q2;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/q2;->b:Lv4/c0;

    invoke-interface {v1}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/q2;->c:Lv4/c0;

    invoke-interface {v2}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu4/b;

    .line 2
    new-instance v3, Lcom/google/android/play/core/assetpacks/p2;

    check-cast v0, Lcom/google/android/play/core/assetpacks/e0;

    check-cast v1, Lcom/google/android/play/core/assetpacks/r2;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/play/core/assetpacks/p2;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lcom/google/android/play/core/assetpacks/r2;Lu4/b;)V

    return-object v3
.end method
