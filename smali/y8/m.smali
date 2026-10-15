###### Class y8.m (y8.m)
.class public abstract Ly8/m;
.super Ljava/lang/Object;
.source "OnSingleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private o:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
    .registers 2

    .line 1
    new-instance v0, Ly8/m$a;

    invoke-direct {v0, p0}, Ly8/m$a;-><init>(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .registers 7

    .line 1
    iget-wide v0, p0, Ly8/m;->o:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    iput-wide v2, p0, Ly8/m;->o:J

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x1f4

    cmp-long v4, v2, v0

    if-gez v4, :cond_10

    goto :goto_13

    .line 4
    :cond_10
    invoke-virtual {p0, p1}, Ly8/m;->a(Landroid/view/View;)V

    :goto_13
    return-void
.end method

###### Class y8.m.a (y8.m$a)
.class Ly8/m$a;
.super Ly8/m;
.source "OnSingleClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly8/m;->b(Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic p:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .registers 2

    .line 1
    iput-object p1, p0, Ly8/m$a;->p:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ly8/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .registers 3

    .line 1
    iget-object v0, p0, Ly8/m$a;->p:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
