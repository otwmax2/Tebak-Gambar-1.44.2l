###### Class androidx.lifecycle.a (androidx.lifecycle.a)
.class public Landroidx/lifecycle/a;
.super Landroidx/lifecycle/g0;
.source "AndroidViewModel.java"


# instance fields
.field private r:Landroid/app/Application;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/g0;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/lifecycle/a;->r:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public j()Landroid/app/Application;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Application;",
            ">()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/a;->r:Landroid/app/Application;

    return-object v0
.end method
