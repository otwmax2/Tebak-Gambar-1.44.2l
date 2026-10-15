###### Class com.android.volley.toolbox.Volley (com.android.volley.toolbox.Volley)
.class public Lcom/android/volley/toolbox/Volley;
.super Ljava/lang/Object;
.source "Volley.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.android.volley.toolbox.Volley.AnonymousClass1 (com.android.volley.toolbox.Volley$1)
.class Lcom/android/volley/toolbox/Volley$1;
.super Ljava/lang/Object;
.source "Volley.java"

# interfaces
.implements Lcom/android/volley/toolbox/DiskBasedCache$FileSupplier;


# instance fields
.field private a:Ljava/io/File;

.field final synthetic b:Landroid/content/Context;


# virtual methods
.method public get()Ljava/io/File;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->a:Ljava/io/File;

    if-nez v0, :cond_13

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/Volley$1;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "volley"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->a:Ljava/io/File;

    .line 3
    :cond_13
    iget-object v0, p0, Lcom/android/volley/toolbox/Volley$1;->a:Ljava/io/File;

    return-object v0
.end method
