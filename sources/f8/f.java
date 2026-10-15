package f8;

import android.annotation.TargetApi;
import android.content.ContentResolver;
import android.content.Context;
import android.content.UriMatcher;
import android.net.Uri;
import android.os.Build;
import android.provider.ContactsContract;
import f8.t;
import f8.y;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContactsPhotoRequestHandler.java */
/* JADX INFO: loaded from: classes2.dex */
class f extends y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final UriMatcher f29350b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f29351a;

    /* JADX INFO: compiled from: ContactsPhotoRequestHandler.java */
    @TargetApi(14)
    private static class a {
        static InputStream a(ContentResolver contentResolver, Uri uri) {
            return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f29350b = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "display_photo/#", 4);
    }

    f(Context context) {
        this.f29351a = context;
    }

    private InputStream j(w wVar) throws IOException {
        ContentResolver contentResolver = this.f29351a.getContentResolver();
        Uri uriLookupContact = wVar.f29469d;
        int iMatch = f29350b.match(uriLookupContact);
        if (iMatch != 1) {
            if (iMatch != 2) {
                if (iMatch != 3) {
                    if (iMatch != 4) {
                        throw new IllegalStateException("Invalid uri: " + uriLookupContact);
                    }
                }
            }
            return contentResolver.openInputStream(uriLookupContact);
        }
        uriLookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uriLookupContact);
        if (uriLookupContact == null) {
            return null;
        }
        return Build.VERSION.SDK_INT < 14 ? ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uriLookupContact) : a.a(contentResolver, uriLookupContact);
    }

    @Override // f8.y
    public boolean c(w wVar) {
        Uri uri = wVar.f29469d;
        return "content".equals(uri.getScheme()) && ContactsContract.Contacts.CONTENT_URI.getHost().equals(uri.getHost()) && f29350b.match(wVar.f29469d) != -1;
    }

    @Override // f8.y
    public y.a f(w wVar, int i10) throws IOException {
        InputStream inputStreamJ = j(wVar);
        if (inputStreamJ != null) {
            return new y.a(inputStreamJ, t.e.DISK);
        }
        return null;
    }
}
