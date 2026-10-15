###### Class com.google.android.gms.internal.drive.zzdj (com.google.android.gms.internal.drive.zzdj)
.class final synthetic Lcom/google/android/gms/internal/drive/zzdj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/drive/events/ChangeListener;


# instance fields
.field private final o:Lcom/google/android/gms/drive/events/OnChangeListener;


# virtual methods
.method public final a(Lcom/google/android/gms/drive/events/ChangeEvent;)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/internal/drive/zzdj;->o:Lcom/google/android/gms/drive/events/OnChangeListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/drive/events/OnChangeListener;->a(Lcom/google/android/gms/drive/events/ChangeEvent;)V

    return-void
.end method
