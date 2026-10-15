###### Class h2.c (h2.c)
.class public Lh2/c;
.super Lg2/p;
.source "FileDescriptorStringLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh2/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lg2/p<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lg2/l;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg2/l<",
            "Landroid/net/Uri;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lg2/p;-><init>(Lg2/l;)V

    return-void
.end method

###### Class h2.c.a (h2.c$a)
.class public Lh2/c$a;
.super Ljava/lang/Object;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lg2/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lg2/m<",
        "Ljava/lang/String;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lg2/c;)Lg2/l;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lg2/c;",
            ")",
            "Lg2/l<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lh2/c;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0, v1}, Lg2/c;->a(Ljava/lang/Class;Ljava/lang/Class;)Lg2/l;

    move-result-object p2

    invoke-direct {p1, p2}, Lh2/c;-><init>(Lg2/l;)V

    return-object p1
.end method

.method public b()V
    .registers 1

    return-void
.end method
