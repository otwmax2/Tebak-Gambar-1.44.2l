###### Class androidx.loader.app.a (androidx.loader.app.a)
.class public abstract Landroidx/loader/app/a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/loader/app/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroidx/lifecycle/n;)Landroidx/loader/app/a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroidx/lifecycle/n;",
            ":",
            "Landroidx/lifecycle/m0;",
            ">(TT;)",
            "Landroidx/loader/app/a;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/loader/app/b;

    move-object v1, p0

    check-cast v1, Landroidx/lifecycle/m0;

    invoke-interface {v1}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroidx/loader/app/b;-><init>(Landroidx/lifecycle/n;Landroidx/lifecycle/l0;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract c(ILandroid/os/Bundle;Landroidx/loader/app/a$a;)Lt0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Landroidx/loader/app/a$a<",
            "TD;>;)",
            "Lt0/b<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract d()V
.end method

###### Class androidx.loader.app.a.InterfaceC0058a (androidx.loader.app.a$a)
.class public interface abstract Landroidx/loader/app/a$a;
.super Ljava/lang/Object;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/loader/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lt0/b;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/b<",
            "TD;>;)V"
        }
    .end annotation
.end method

.method public abstract b(ILandroid/os/Bundle;)Lt0/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lt0/b<",
            "TD;>;"
        }
    .end annotation
.end method

.method public abstract c(Lt0/b;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lt0/b<",
            "TD;>;TD;)V"
        }
    .end annotation
.end method
