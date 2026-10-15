###### Class com.google.android.play.core.assetpacks.z0 (com.google.android.play.core.assetpacks.z0)
.class public final Lcom/google/android/play/core/assetpacks/z0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"

# interfaces
.implements Lv4/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv4/c0<",
        "Lcom/google/android/play/core/assetpacks/y0;",
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

.field private final c:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/y;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/h1;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lv4/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/p2;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;Lv4/c0;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/e0;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/u3;",
            ">;",
            "Lv4/c0<",
            "Lcom/google/android/play/core/assetpacks/y;",
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

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/z0;->a:Lv4/c0;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/z0;->b:Lv4/c0;

    iput-object p3, p0, Lcom/google/android/play/core/assetpacks/z0;->c:Lv4/c0;

    iput-object p4, p0, Lcom/google/android/play/core/assetpacks/z0;->d:Lv4/c0;

    iput-object p5, p0, Lcom/google/android/play/core/assetpacks/z0;->e:Lv4/c0;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza()Ljava/lang/Object;
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/z0;->a:Lv4/c0;

    invoke-interface {v0}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z0;->b:Lv4/c0;

    invoke-static {v1}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v4

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z0;->c:Lv4/c0;

    invoke-static {v1}, Lv4/a0;->a(Lv4/c0;)Lv4/y;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/z0;->d:Lv4/c0;

    invoke-interface {v1}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/play/core/assetpacks/z0;->e:Lv4/c0;

    invoke-interface {v2}, Lv4/c0;->zza()Ljava/lang/Object;

    move-result-object v2

    .line 2
    new-instance v8, Lcom/google/android/play/core/assetpacks/y0;

    move-object v3, v0

    check-cast v3, Lcom/google/android/play/core/assetpacks/e0;

    move-object v6, v1

    check-cast v6, Lcom/google/android/play/core/assetpacks/h1;

    move-object v7, v2

    check-cast v7, Lcom/google/android/play/core/assetpacks/p2;

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/google/android/play/core/assetpacks/y0;-><init>(Lcom/google/android/play/core/assetpacks/e0;Lv4/y;Lv4/y;Lcom/google/android/play/core/assetpacks/h1;Lcom/google/android/play/core/assetpacks/p2;)V

    return-object v8
.end method
