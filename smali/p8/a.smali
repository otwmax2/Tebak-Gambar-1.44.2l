###### Class p8.a (p8.a)
.class public final Lp8/a;
.super Ljava/lang/Object;
.source "OnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp8/a$a;
    }
.end annotation


# instance fields
.field final o:Lp8/a$a;

.field final p:I


# direct methods
.method public constructor <init>(Lp8/a$a;I)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp8/a;->o:Lp8/a$a;

    .line 3
    iput p2, p0, Lp8/a;->p:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lp8/a;->o:Lp8/a$a;

    iget v1, p0, Lp8/a;->p:I

    invoke-interface {v0, v1, p1}, Lp8/a$a;->t(ILandroid/view/View;)V

    return-void
.end method

###### Class p8.a.InterfaceC0218a (p8.a$a)
.class public interface abstract Lp8/a$a;
.super Ljava/lang/Object;
.source "OnClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract t(ILandroid/view/View;)V
.end method
