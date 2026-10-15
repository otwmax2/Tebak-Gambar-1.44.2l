###### Class com.google.android.play.core.assetpacks.v0 (com.google.android.play.core.assetpacks.v0)
.class public final Lcom/google/android/play/core/assetpacks/v0;
.super Ljava/lang/Object;
.source "com.google.android.play:core@@1.10.2"


# instance fields
.field private a:Lcom/google/android/play/core/assetpacks/n3;


# direct methods
.method synthetic constructor <init>(Ls4/b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls4/a;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/v0;->a:Lcom/google/android/play/core/assetpacks/n3;

    const-class v1, Lcom/google/android/play/core/assetpacks/n3;

    invoke-static {v0, v1}, Lv4/b0;->b(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/play/core/assetpacks/w0;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/v0;->a:Lcom/google/android/play/core/assetpacks/n3;

    const/4 v2, 0x0

    .line 2
    invoke-direct {v0, v1, v2}, Lcom/google/android/play/core/assetpacks/w0;-><init>(Lcom/google/android/play/core/assetpacks/n3;Ls4/c;)V

    return-object v0
.end method

.method public final b(Lcom/google/android/play/core/assetpacks/n3;)Lcom/google/android/play/core/assetpacks/v0;
    .registers 2

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/v0;->a:Lcom/google/android/play/core/assetpacks/n3;

    return-object p0
.end method
